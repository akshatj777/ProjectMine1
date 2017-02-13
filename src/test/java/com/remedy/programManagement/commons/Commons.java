package com.remedy.programManagement.commons;

import com.google.common.base.Splitter;
import com.google.common.collect.Lists;

import java.util.List;

/**
 * Created by aparlapalli on 2/2/17.
 */
public class Commons {


    // to split data from cucumber file if there are multiple values for a field
    public static List<String> splitList(String dataToSplit) {

        // List<String> dataNoSplit = new ArrayList<>();

        return Lists.newArrayList(Splitter.on(",").trimResults().split(dataToSplit));

    }

}
