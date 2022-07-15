\<code\> *Example macro calculating stats from a results table column
*Import any data into a results table and then use the following to
extract summary stats *The examples use \"Area\" as the column heading
*All results checked with OpenOffice Calc, note: variance uses n-1 to
correct for sample bias

//Some variables N=0; total_area=0; mean_area=0; total_variance=0;
variance_area=0; SD_Area=0; SE_Area=0; CI95_Area=0; max_area=0;
min_area=0;

//Generate a results table run(\"Clear Results\"); run(\"Blobs (25K)\");
run(\"Make Binary\"); run(\"Set Measurements\...\", \"area redirect=None
decimal=4\"); run(\"Analyze Particles\...\", \"size=0-Infinity
circularity=0.00-1.00 show=Nothing display exclude\");

//Number of results in \"Area\" Column N = nResults;

//Mean \"Area\"column for (a=0; a\<nResults(); a++) {

      total_area=total_area+getResult(&quot;Area&quot;,a);
      mean_area=total_area/nResults;

}

//Max value in \"Area\" column for (a=0; a\<nResults(); a++) {

      if (getResult(&quot;Area&quot;,a)&gt;max_area)
      {
       max_area = getResult(&quot;Area&quot;,a);
          }
          else{};

}

//Min value in \"Area\" column (note: requires max value)
min_area=max_area; for (a=0; a\<nResults(); a++) {

      if (getResult(&quot;Area&quot;,a)&lt;min_area)
      {
       min_area = getResult(&quot;Area&quot;,a);
          }
          else{};

}

//Variance of \"Area\" column for (a=0; a\<nResults(); a++) {

      total_variance=total_variance+(getResult(&quot;Area&quot;,a)-(mean_area))*(getResult(&quot;Area&quot;,a)-(mean_area));
      variance_area=total_variance/(nResults-1);

}

//SD of \"Area\" column (note: requires variance)
SD_Area=sqrt(variance_area);

//SE of \"Area\" column (note: requires SD) SE_Area =
(SD_Area/(sqrt(N)));

//95% CI of column \"Area\" (note: requires SE) CI95_Area =
1.96\*SE_Area;

//Return values print(\"N = \"+N); print(\"Mean = \"+mean_area);
print(\"Var = \"+variance_area); print(\"SD = \"+SD_Area); print(\"SE =
\"+SE_Area); print(\"95% CI = \"+CI95_Area); print(\"Max = \"+max_area);
print(\"Min = \"+min_area);

//Richard Mort 13/04/2012 \</code\>
