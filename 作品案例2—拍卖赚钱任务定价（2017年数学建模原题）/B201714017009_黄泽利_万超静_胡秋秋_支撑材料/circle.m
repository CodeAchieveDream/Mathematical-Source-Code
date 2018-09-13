clc;
clear;

% alpha=0:pi/500:2*pi;%角度[0,2*pi]
% R=2;%半径
% x=R*cos(alpha)+100;
% y=R*sin(alpha)+100;
% plot(x,y,'-');
% axis([0,200,0,200]);

latlon20=[
  22.51592012	113.9356769
22.66229971	114.0729969
22.66283814	114.0263974
22.67343353	113.8257052
22.73565178	114.280464
23.12849295	113.3506186
23.13822079	113.3894867
23.12401896	113.411547
23.12431564	113.4081151
23.13544204	113.390008
23.13680577	113.3315495
23.19657146	113.248218
23.13175901	113.275758
23.13534304	113.3037146
23.13508872	113.3087933
23.13782219	113.3913207
23.13708468	113.3341858
23.13963001	113.373441
23.39286447	113.2168771
23.09187146	113.3378758
23.09874703	113.3145001
23.08686269	113.3324673
23.08887865	113.3283798
23.08762923	113.3338413
23.09231582	113.333797
22.94104074	113.3643577
22.94428352	113.4044932
22.94228167	113.3604421
22.94001202	113.360734
22.94289179	113.3606862
22.94548161	113.4033092
23.21696173	113.2862596
23.18365032	113.2334603
23.21844312	113.2333725
23.17801596	113.2461178
23.18623308	113.2363258
23.17886838	113.2482347
23.21872162	113.2323053
23.19538681	113.2410703
22.6873087	113.9459597
23.03098143	113.3157936
23.13206675	113.2749836
23.12974908	113.2752038
23.14246797	113.3005
23.13891176	113.3274613
23.13562043	113.3048107
23.12742643	113.2581662
23.03030049	113.3145988
23.02768375	113.3178615
23.02749214	113.3208977
22.94294137	113.4065271
23.20717633	113.2643515
22.6614933	114.0272899
23.09785202	113.3057915
23.13875611	113.3288103
23.13542532	113.3037677
23.12585311	113.4120539
23.15263157	113.3319798
22.81963599	113.8037291
22.82104527	113.8090357
23.00675916	113.1290287
23.0407653	113.1115737
22.82104527	113.8090357
22.81973576	113.8093302
22.8184991	113.8067168
22.68620526	113.9405252
22.57651183	113.957198
22.55888775	113.9507227
22.54900371	113.9722597
22.56277351	113.9565735
22.52486369	113.9308596
22.519087	113.9358436
22.54797243	113.977909
22.52455419	113.9247319
22.54603946	113.9749684
22.51578568	113.9420557
22.52488949	113.9191429
22.52394954	113.9434416
22.55101305	113.9567446
22.52596134	113.9353993
22.66391673	114.0717177
22.6376364	114.0679162
22.65788521	114.0747723
22.65776972	114.0794934
22.73782038	114.2858901
22.6651428	114.0200019
22.65204961	114.0535937
22.60766979	113.8685312
22.67955589	113.8329385
22.67509773	113.822362
22.56350361	113.9068948
22.56419251	113.8961664
22.607611	113.8698943
22.5609901	113.894563
22.58297289	113.9071834
23.16549805	113.3875901
23.159336	113.3387113
23.13070225	113.4162609
23.1381659	113.3728361
23.12248087	113.3611249
23.20013915	113.374909
23.09982822	113.4849635
23.10112473	113.4872412
23.21280913	113.2563331
23.25778406	113.3199932
23.21280913	113.2563331
23.26171206	113.2736317
23.1404539	113.2885119
23.12882385	113.4224455
23.1381659	113.3728361
23.14416119	113.2937609
23.12912268	113.3502696
23.13559919	113.3507531
23.1324472	113.3398257
23.19965405	113.3471287
23.16213347	113.3362425
23.39620146	113.2148232
23.09537864	113.340586
23.10022614	113.2726541
23.09225763	113.3092172
23.09349108	113.2792664
23.08690863	113.3432045
23.08308279	113.3399863
23.09607127	113.321481
23.01919557	113.3252713
22.94194927	113.3712035
22.96859452	113.4081296
22.95321398	113.3659058
22.95435755	113.3680492
22.9677616	113.4044377
22.95410901	113.358418
23.21417689	113.2830531
23.24103979	113.3111972
23.17916744	113.2579074
23.19914624	113.2594586
23.21375407	113.2848136
23.25396062	113.3157819
23.21385224	113.250264
23.24225952	113.3111664
23.19907045	113.2387753
23.23709476	113.2837807
23.21277909	113.2649338
23.22783298	113.3098073
23.22050464	113.2826379
23.15898957	113.2276926
23.21394862	113.281015
23.21794012	113.2368675
23.23159701	113.283057
23.21271064	113.2644744
23.22137104	113.2360855
23.20636522	113.3358956
23.23637165	113.279566
23.22620876	113.3095973
23.1570952	113.2297309
23.161857	113.2676472
22.63899906	114.0675793
22.51924352	113.9195281
22.58243264	113.9591486
22.68008861	113.8347861
23.2177189	113.23556
23.30080982	113.3621418
23.26172271	113.2781659
23.3004295	113.3621215
23.19924759	113.334818
22.64153534	114.0719117
23.12858004	113.3011622
23.12382897	113.3298085
23.14416119	113.2937609
23.12011401	113.253472
22.9505863	113.360999
22.97284334	113.3354088
22.96283395	113.4063597
22.95377413	113.4063406
23.01619601	113.3314991
22.9564903	113.3756996
23.29881375	113.3629421
23.22050464	113.2826379
23.21772876	113.273664
22.73383221	113.8315273
22.78567173	113.9004089
23.19096422	113.3331534
22.52394954	113.9434416
22.52712849	114.0539088
22.5684784	113.9001112
23.1260612	113.3323389
23.00569584	113.1243661
23.04490751	113.7884342
23.03272552	113.12013
23.00621128	113.1241309
23.03122319	113.1207972
23.0553869	113.7700911
23.01465206	113.7680676
23.03791217	113.1563516
23.03964619	113.154622
23.04112492	113.1373402
23.0387396	113.1073721
23.03041581	113.121425
23.04334065	113.1056167
23.04516433	113.1210046
23.03004352	113.1298659
23.00576024	113.1355665
22.94362798	113.6756826
23.05029788	113.7566159
22.8188764	113.6774155
23.00974206	113.0855228
23.04014697	113.1074724
22.94434236	113.6771283
22.82311516	113.682687
22.73591184	114.2757904
23.06354452	113.7710582
23.05434269	113.7548907
23.03909825	113.7731777
23.06667235	113.1548703
23.0440624	113.125784
23.06367398	113.7711884
22.56614225	113.9808368
22.50001192	113.8956606
22.5437861	113.9239778
22.50616871	113.9314284
22.49962566	113.9365145
22.54032142	113.9236456
22.4981901	113.8984817
22.49772892	113.9373377
22.49416247	113.927139
22.49308313	113.9358391
22.56470734	113.9820093
22.5829933	114.1471227
22.60649323	114.1241536
22.65265496	114.0272292
22.78892197	113.8966327
22.58706534	113.9057614
22.6040497	114.0586138
22.65691327	114.2100928
22.65301422	114.2124549
22.63495417	114.0448196
22.68447006	114.000085
22.69331552	113.8170784
22.73335619	113.8312919
22.70874974	113.8160543
22.73335619	113.8312919
22.61177508	114.0380587
22.71365257	114.0652375
22.70038707	113.8449026
22.70700814	114.0967766
22.58488076	113.913275
22.54138954	113.9191104
22.77040177	113.8551161
23.16751438	113.3379544
23.11593032	113.4204891
23.16189407	113.3433346
23.10979739	113.4534484
23.10975809	113.4534812
23.11114068	113.2782409
23.21565299	113.3005692
22.60495971	113.8575896
23.16281868	113.418328
23.14381101	113.225977
23.14217367	113.2258303
23.13697262	113.2511805
23.07562227	113.2882907
23.09692801	113.239735
23.11405394	113.2681623
23.07250678	113.3232631
22.96178714	113.4420382
22.98035071	113.3222749
23.22905901	113.274368
23.24188766	113.2770715
23.18718813	113.3366981
23.22035048	113.249282
23.15334517	113.2396818
23.17281527	113.3224149
22.57204653	114.1188134
22.5635259	113.9893556
23.27373214	113.3010978
23.14311721	113.2254512
22.97984508	113.3212453
22.96267859	113.4455898
23.18246071	113.3497966
23.08068204	113.2757904
22.97479086	113.3293635
23.2516148	113.2923559
23.25840064	113.2999763
22.5342988	114.0317449
22.64040872	114.043872
22.77248305	113.853852
23.16432044	113.2431433
22.94295695	113.3934216
22.78249643	113.7638949
22.78139716	113.7672628
23.02871297	113.8045789
22.94132785	113.6767951
22.84339687	113.2557574
23.0695963	113.156189
23.07059532	113.0576611
23.04372806	113.1470411
23.03480604	113.0880386
23.03489605	113.0901446
23.03905705	113.072597
23.0488615	113.0718864
23.03429331	113.0640067
23.0208495	113.1393148
23.02630556	113.1403491
23.02991483	113.0576595
23.01281035	113.1202326
23.009444	113.0925428
23.0103936	113.1462973
22.92277014	113.6689502
22.84139024	113.2631754
23.02986674	113.8069493
22.82065293	113.6793236
22.84425565	113.2588793
22.82065293	113.6793236
22.82065293	113.6793236
23.05466654	113.7414039
23.04229567	113.8077758
22.98807885	114.0208579
23.05913863	113.7431308
23.01280811	113.7603122
22.54220963	114.0196493
22.54808582	113.9453119
22.54927013	114.1317447
22.71166007	114.0728836
22.63539828	114.2263772
22.63010042	114.0638327
22.73859039	113.8184493
22.52331401	114.0466386
22.5331754	114.0831342
22.59955905	114.130363
22.73859039	113.8184493
22.75600203	113.8513612
22.70597175	113.8079954
22.73006657	114.0666477
22.66919267	114.0384117
22.59628077	113.8550628
22.58194314	113.8880166
23.16878915	113.4199598
23.10871181	113.4928846
23.10871181	113.4928846
23.10871181	113.4928846
22.96099325	113.4427752
23.25231339	113.2640936
23.17452179	113.3590439
22.80661724	113.5538411
22.80808312	113.5540935
23.09144379	113.3619952
23.09223544	113.3618211
23.07813828	113.3563529
23.06884733	113.3226199
22.96481939	113.3565805
22.95454492	113.3451482
23.23158622	113.2643764
23.34332347	113.301253
23.23158622	113.2643764
23.15645038	113.2549363
22.58781321	113.9729021
22.54605355	114.0259737
23.15655948	113.2149279
22.56382444	113.9907634
22.54700517	114.1111563
22.58197746	113.8879268
23.09450111	113.2664068
22.801073	113.7618106
23.06483206	113.7971486
23.06286454	113.7987584
23.06060865	113.7374003
23.1176526	113.1774208
23.10435408	113.1991211
23.06677042	113.1421953
23.06369651	113.1355791
23.03863041	113.1704547
23.06573343	113.1321153
23.00421017	113.0704232
22.99889137	113.6206429
22.84799685	113.265445
22.8413378	113.2528321
23.06397425	113.1073552
23.02429369	113.7913009
22.962945	113.6786409
23.0832246	113.7285264
23.02609965	113.746608
23.06233415	113.1056841
22.54293611	114.1314072
22.73802844	114.264097
22.70103564	114.2442921
22.63154051	114.1214928
22.72272561	114.0738016
22.64138032	114.2299818
22.72294122	114.2777156
22.67470711	114.2209333
22.61556463	114.1524159
22.72133411	114.0616196
22.72710367	114.0613819
22.68518823	113.8115675
22.730349	114.068783
23.11810119	113.5442171
23.11295796	113.2185961
23.06873266	113.2597245
23.06832244	113.259826
23.10871181	113.4928846
23.07207495	113.3573906
22.96639568	113.4186506
23.00743132	113.3201755
22.95705294	113.4238473
22.55528126	114.1160913
22.54938063	114.0502177
22.54660305	114.1049551
22.57517644	114.1449386
22.80567514	113.7907865
23.00064852	113.6154402
23.05828484	113.8147964
22.99313225	113.7323716
23.06167985	113.8102199
23.12232763	113.1914852
23.00022308	113.1080614
23.0024026	113.0651869
22.97994563	114.0020847
22.80018488	113.7826897
23.10103232	113.2116872
23.04235254	113.7318371
22.54458961	113.9986601
22.61781817	114.1572608
22.59155498	114.1259102
23.08029132	113.2042061
23.23376317	113.2234607
22.96950879	113.3827743
23.17268536	113.2829081
23.06159876	113.6626383
22.80544018	113.8238665
22.85171477	113.6315449
22.99142805	113.7725018
22.97417485	113.7345883
23.14659839	113.1104485
23.0723988	113.0896832
23.33555566	113.3075287
23.0723988	113.0896832
23.03128773	113.8334312
23.02874532	113.8311519
23.02631551	113.8422567
22.85271431	113.2565554
23.0781566	113.8741143
22.97333327	113.730314
23.15029122	113.1092646
22.58193448	114.1563953
23.10125022	113.5484367
23.33873201	113.287509
23.01403653	113.3995947
23.02170016	113.3574494
22.92265134	113.3754902
23.01217957	113.3974048
23.09705081	113.6581524
23.01335039	113.3953229
23.06209254	113.826673
22.7958979	113.7978335
23.05866525	113.8321688
22.98744806	113.725147
23.18828575	113.2051584
23.01479481	113.1651816
22.9908325	113.0723102
22.69796842	114.1787142
23.0230261	113.8416605
23.0284963	113.848423
22.88459841	113.2182759
22.85727159	113.2677905
22.84690063	113.2779749
23.14631831	113.1050926
23.15072393	113.1068267
23.03509621	113.215227
22.96894263	113.9857532
23.09996972	113.6603676
22.9870642	113.7689429
23.09621418	113.6572812
23.12358718	113.1648355
22.6417148	114.195533
22.65027837	113.9366241
22.70743279	113.9300131
23.19967301	113.406847
23.0416214	113.7119223
23.01478583	113.6858529
22.8387028	113.7066879
23.06377156	113.834619
22.8821413	113.2179369
23.08248182	113.8756202
23.08248182	113.8756202
22.62558348	114.1549664
22.69339571	114.1474874
23.12486646	113.5614453
23.0479764	113.2892933
23.29451408	113.3313063
23.0479764	113.2892933
23.05399472	113.2699138
23.29451408	113.3313063
23.29451408	113.3313063
23.29451408	113.3313063
22.72286461	114.2445007
23.01025416	113.6817199
23.07829135	113.7987384
23.01783954	113.8233686
22.93224969	113.9403339
22.83110817	113.7801718
23.03504106	113.8561107
22.98796007	113.0170859
22.78108249	114.0574014
22.89140037	113.4634086
22.52619876	113.9892211
22.84478414	113.6454694
23.05170834	113.8429711
22.96936454	113.8966138
23.20300498	113.1713931
23.10214598	113.8030771
22.88898088	113.2210372
22.7563793	114.0421356
22.68940336	114.3454188
22.750664	114.378843
22.71636331	114.322257
22.75139338	114.0262399
22.7778578	113.9170043
22.70466497	113.9726899
22.68008861	113.8347861
22.65235376	113.9299125
22.56073431	113.8900779
22.670522	113.9235611
22.9345908	113.4167995
23.09138071	113.5316771
23.23745771	113.2042653
22.75034263	113.5835226
23.38043854	113.2148083
22.8075467	113.5521662
22.75155653	113.5823006
22.75149396	113.5830112
23.45231332	113.1865032
23.46633279	113.159492
23.4707977	113.1623173
23.45948327	113.1906655
23.46689744	113.1568477
23.39484028	113.2214471
23.4153625	113.2559812
23.40499354	113.2185644
23.37243417	113.2076071
23.42583117	113.2080568
23.39841078	113.2515307
23.38959437	113.2094492
23.40380215	113.2090908
23.39508831	113.2092329
23.40841281	113.2127554
23.39484028	113.2214471
23.42604026	113.2057436
22.9345908	113.4167995
22.9345908	113.4167995
23.55528066	113.5988663
23.56341133	113.5803848
23.62547628	113.4313956
23.87839806	113.5397114
23.56038693	113.6018782
23.54435986	113.5926833
23.54456994	113.5926934
23.55079636	113.5963006
23.54966086	113.5927756
23.55654335	113.594664
23.55090902	113.602251
23.45165523	113.2845092
23.55840651	113.5895144
22.89445321	113.4096635
22.77759139	113.7516813
22.87739958	114.1275908
23.08542731	113.6936712
22.85522568	114.1534998
22.82232789	113.7424637
22.85094098	114.1669061
22.85030931	114.1708909
23.00567603	113.7076519
22.79566135	114.1565339
22.80016347	114.0627615
23.17934885	112.8994031
23.17677756	112.8784023
23.16943397	112.9073857
23.16865186	112.8938126
23.16321812	112.9148997
23.0386685	113.2034172
23.17018893	112.9060636
23.16730584	112.902416
23.07826539	113.0413813
23.0386685	113.2034172
23.15666359	112.9049408
22.98796007	113.0170859
22.91452474	113.6760975
22.85615682	114.1539907
23.08043298	113.9678196
22.79339959	114.1608936
22.97892268	113.956267
22.78108249	114.0574014
22.79633118	114.0632326
23.04883737	113.8557656
22.7920915	114.1017881
22.76781337	114.0421691
22.7406896	114.1664449
22.84421485	114.1744379
22.84485611	114.1728089
22.76789967	113.2924173
22.90953334	113.1809251
22.86636347	113.1383829
22.82250546	113.2418331
23.0386685	113.2034172
22.82250546	113.2418331
22.93815956	113.8870409
23.11276083	112.9299114
23.11501909	112.9305637
22.6335575	113.8513604
23.07978943	113.429745
23.37477577	113.1788848
23.45673194	113.2818311
22.99106044	113.4052447
22.72103752	114.1790518
23.05595171	113.871321
22.87794292	113.2265578
22.85760935	113.0531252
22.84851008	113.1870299
22.85737617	113.0534819
22.74300109	113.9950401
22.99522565	113.8000233
23.12824102	113.0139313
23.09724421	113.7523577
23.40649056	113.1696376
22.91692471	113.6433026
23.04403683	112.9214509
22.96921119	113.7638371
22.9652963	113.2460732
22.88992793	113.4614475
22.80839337	113.5539168
23.44184274	113.3286502
23.4422023	113.3300279
22.88992793	113.4614475
22.96099325	113.4427752
22.6315777	114.1233026
22.68155741	113.9462038
22.74040934	113.7890795
23.46633279	113.159492
22.805179	113.5628515
22.81230491	114.1729882
22.72831758	114.1967043
22.80574632	113.2755918
22.81782912	113.7288782
23.10425851	113.8644239
22.80461472	113.7389577
23.06712166	113.711025
22.92463744	113.6632245
23.10904412	113.824964
23.02147069	113.9767303
22.80193697	113.7215484
23.00078427	113.9509232
22.8387028	113.7066879
22.8291523	113.7347647
22.94565906	113.9505843
23.00561717	113.9381655
22.78360392	113.2915659
22.94132785	113.6767951
22.83399226	114.0968097
22.80029657	113.7472574
23.12703337	113.0120037
23.10500981	113.8198157
23.05714801	113.663448
23.00877683	113.7381856
23.05080297	113.7156716
22.91669305	114.0248715
23.08636883	113.9505344
22.94081175	113.9453226
22.99587084	113.7621434
22.91334142	113.8483693
23.0650595	113.0572779
23.11458393	113.8613142
22.90672977	113.8475874
23.11465325	113.8369654
22.86402965	113.1398401
22.96629587	113.0906029
22.96411796	113.0897185
22.95881496	113.0899638
22.96420705	113.0957859
22.96049969	113.1071838
23.06367854	113.0570744
22.96532138	113.0925684
23.00958915	113.0856424
23.04181877	113.0883982
22.96817917	113.0978671
22.99456666	113.1409256
22.97888202	113.0166506
22.94563836	113.0900415
22.8332624	113.2801516
22.67057736	113.8735894
22.86139706	113.8539976
22.95998261	113.0474105
23.06817647	112.9707635
22.94081692	113.0626781
22.80363066	113.2523984
22.93017212	113.2183671
23.25434329	113.1416733
22.76676047	113.2629498
22.77640754	114.3095878
22.78139876	114.3008065
23.19090473	113.4492017
22.84224477	113.3450767
22.56778253	114.1781275
22.83661574	113.0000318
22.90311313	112.8923366
23.0968614	113.041882
22.90119911	112.8850012
22.88479945	113.2589542
23.14872294	113.5152914
22.83996892	113.3498966
23.00707365	113.008964
23.11360001	113.0152889
22.89624538	112.8883289
23.38627895	113.410599
22.82771435	113.5218711
22.9138949	113.2240878
22.88967401	113.081987
22.78982133	113.1641039
23.37184576	113.3603993
22.77403434	113.5634849
22.56484081	114.2445711
22.55899906	114.2413174
22.64144071	114.4227421
22.64144071	114.4227421
23.16769035	113.6651728
23.18611685	113.5974857
23.39690863	113.3475114
22.82926076	113.5128066
22.76096874	113.5670518
22.73722496	113.49332
22.71023017	113.5528912
23.33887144	113.1110649
23.4739307	113.2286618
22.8145924	113.4191078
22.8100654	113.4141599
23.72311773	113.739427
23.81610767	113.9579294
23.12928955	113.6604402
22.77665396	113.5933558
22.64946304	113.6129849
23.446661	113.2201755
23.47430929	113.163008
23.37803295	113.2569259
23.40329889	113.2398514
23.43115969	113.4254505
23.46444973	113.1728925
22.97556192	113.4972296
22.91229115	113.3507636
23.54196985	113.5979552
23.55366671	113.5951132
23.28119075	113.2376396
23.5532428	113.5953837
23.55380843	113.5953328
23.45803366	113.1869153
23.3754398	113.2134638
23.47484287	113.1908172
23.47290189	113.1700943
23.46841629	113.1611801
23.14339098	113.6011789
23.04845541	113.5499061
23.17455266	113.0688513
23.2615299	113.0247518
23.07057951	112.8445408
22.90422292	112.9019826
23.18585718	113.0927552
22.95343786	112.9712874
22.91055956	112.8841425
22.82452268	112.6832583
23.00573639	112.9707899
22.88245435	114.0068175
22.96547337	114.1542792
22.96920507	114.1741551
22.87852312	113.0553623
22.87852312	113.0553623
22.70990173	113.1682307
22.72036334	113.1550942
22.91334578	113.6256759
23.22978218	113.0857182
23.12824102	113.0139313
22.8249516	114.1473047
22.84443218	114.1749839
22.91789735	114.0148092
22.78849837	114.1091621
22.88864948	113.6687951
22.84158065	113.9837534
22.74394534	114.1439999
22.70228568	114.1736681
23.02506148	114.1035973
22.74829892	114.1391543
22.87660886	113.675044
22.96547337	114.1542792
22.83586295	114.1128578
22.95119214	113.2670328
22.71129853	113.1614172
23.20445879	113.1633891
23.2604804	113.0236253
23.22113868	112.9248459
23.05983215	113.5872324
23.45457434	113.4983044
22.5382642	114.0658681
23.12003249	113.2890606
23.128422	113.4111868
23.18845597	113.2716284
23.19676966	113.2703134
23.10350796	113.1836978
23.061023	  112.9221482
23.06812838	113.0255363
22.93595157	113.8990852
22.9097662	 114.0740398
23.11275168	113.1253912
23.17903001	112.8761925
22.57872798	114.4936096
22.70528903	114.1403154
23.09554245	113.1847645
22.98965586	113.8897387
22.97049574	113.9193364
23.02941462	113.9955167
23.11759803	113.8836368
22.80869811	114.1002264
23.00371616	113.881268
23.07328362	114.0234467
23.13871675	113.111198
23.04326407	112.9260813
23.19885366	113.1851605
23.09348295	113.1826215
23.23190692	113.0890874
23.06279119	113.0623784
23.10971032	113.1808405
23.22923111	113.0827188
23.11526775	113.1169399
22.80256864	113.2873979
23.06007494	112.9216899
23.11065649	113.1309687
22.84670401	114.1592865
23.11526775	113.1169399
23.12341113	113.1517748
22.81467597	113.8277312
23.12329431	113.1103823  
];

axesm utm   %设置投影方式，这是MATLAT自带的Universal Transverse Mercator （UTM）方式

Z=utmzone(latlon20);%utmzone根据latlon20里面的数据选择他认为合适的投影区域，可以是一个台站的经纬度，也可以是所有台站的经纬度（此时是平均）

setm(gca,'zone',Z)

h = getm(gca)

R=zeros(size(latlon20));

for i=1:length(latlon20)

[x,y]= mfwdtran(h,latlon20(i,1),latlon20(i,2));  % 调用MATLAB自带的函数，根据先前设置的Z，逐个台站进行转换计算

 R(i,:)=[x;y];

 end

dlmwrite('coordinate.txt',R)

figure; plot(R(:,1),R(:,2),'r+','linewidth',6) %在直角坐标下画出这些台站















