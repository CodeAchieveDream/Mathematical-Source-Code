# -*- coding: utf-8 -*-
"""
Created on Sat Dec 30 21:59:45 2017

@author: LiLy_Huang
"""

import tensorflow as tf
import numpy as np
import math

from tensorflow.examples.tutorials.mnist import input_data
#载入数据
mnist = input_data.read_data_sets("MNIST_data",one_hot=True)

#定义每个批次的大小
batch_size=100
#计算共有多少个批次
n_batch=mnist.train.num_examples

#定义两个placeholder
x=tf.placeholder(tf.float32,[None,784])
y=tf.placeholder(tf.float32,[None,10])
keep_drop=tf.placeholder(tf.float32)

#中间层神经元，中间层的神经元的个数为10，定义中间层的个数为5层
w_m1=tf.Variable(tf.truncated_normal([784,2000],stddev=0.1))  #截断正态分布
b_m1=tf.Variable(tf.zeros([2000])+0.1)
L1=tf.nn.tanh(tf.matmul(x,w_m1)+b_m1)
L1_drop=tf.nn.dropout(L1,keep_drop)


w_m2=tf.Variable(tf.truncated_normal([2000,2000],stddev=0.1))
b_m2=tf.Variable(tf.zeros([2000])+0.1)
L2=tf.nn.tanh(tf.matmul(L1_drop,w_m2)+b_m2)
L2_drop=tf.nn.dropout(L2,keep_drop)


w_m3=tf.Variable(tf.truncated_normal([2000,2000],stddev=0.1))
b_m3=tf.Variable(tf.zeros([2000])+0.1)
L3=tf.nn.tanh(tf.matmul(L2_drop,w_m3)+b_m3)
L3_drop=tf.nn.dropout(L3,keep_drop)

#定义输出层
w_m4=tf.Variable(tf.truncated_normal([2000,10],stddev=0.1))
b_m4=tf.Variable(tf.zeros([10])+0.1)
#L4=tf.nn.tanh(tf.matmul(L3_drop,w_m4)+b_m4)
#使用softmax函数将输出值转化为概率
prediction=tf.nn.softmax(tf.matmul(L3_drop,w_m4)+b_m4)



#创建一个简单的神经网络
#w=tf.Variable(tf.zeros([100,10]))   
#[ 784,10 ] 参数的含义：784 表示为每个神经元的输入的个数为784个值，10的含义表示为该层共有10个神经元
#b=tf.Variable(tf.zeros([10]))
#[ 784,10 ]参数的含义为 784 表示为每个神经元的输入为784个值，10的含义为该层的神经元的个数为10个



#定义二次代价函数
loss=tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(labels=y,logits=prediction))

#使用梯度下降进行训练
train_step=tf.train.GradientDescentOptimizer(0.1).minimize(loss)

#初始化变量
init=tf.global_variables_initializer()

#将结果存你放在布尔列表中
correct_prediction=tf.equal(tf.argmax(y,1),tf.argmax(prediction,1))

#求准确率
accuracy=tf.reduce_mean(tf.cast(correct_prediction,tf.float32))
#将布尔型装换为float32型
  
with tf.Session() as sess:
    sess.run(init)
    for epoch in range(10):
        for batch in range(n_batch):
            batch_xs,batch_ys=mnist.train.next_batch(batch_size)
            sess.run(train_step,feed_dict={x:batch_xs,y:batch_ys,keep_drop:0.001})
            
            
        test_acc=sess.run(accuracy,feed_dict={x:mnist.test.images,y:mnist.test.labels,keep_drop:1.0})
        train_acc=sess.run(accuracy,feed_dict={x:mnist.train.images,y:mnist.train.labels,keep_drop:1.0})

        print("Iter "+str(epoch)+",Testing Accuracy "+str(test_acc)+" ,Training Accuracy "+str(train_acc))
        

























