{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 177.0, 333.0, 1240.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.0, 10.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "prepend init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 73.0, 10.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "patcherargs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 5.0, 10.0, 60.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 252.0, 10.0, 139.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "bbb.detail.osc.route.js",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js bbb.detail.osc.route.js"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "",
					"comment" : "osc message list",
					"hint" : "",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "main_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-142",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-143",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-144",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-145",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-146",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_2"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-147",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 41.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_2"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-148",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 77.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_3"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-149",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 59.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_3"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-150",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 95.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_4"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-151",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_4"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-152",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 113.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_5"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-153",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_5"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-154",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 131.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_6"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-155",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_6"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-156",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 149.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_7"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-157",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 131.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_7"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-158",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_8"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-159",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 149.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_8"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-160",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_9"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-161",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_9"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-162",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_10"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-163",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_10"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-164",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 221.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_11"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-165",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 203.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_11"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-166",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 239.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_12"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-167",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 221.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_12"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-168",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_13"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-169",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_13"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-170",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_14"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-171",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 257.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_14"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-172",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 293.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_15"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-173",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_15"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-174",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 311.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_16"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-175",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 293.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_16"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-176",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 329.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_17"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-177",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 311.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_17"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-178",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 347.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_18"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-179",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 329.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_18"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-180",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 365.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_19"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-181",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 347.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_19"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-182",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_20"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-183",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_20"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-184",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_21"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-185",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 383.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_21"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-186",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_22"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-187",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_22"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-188",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 437.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_23"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-189",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 419.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_23"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-190",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 455.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_24"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-191",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 437.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_24"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-192",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 473.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_25"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-193",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_25"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-194",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 491.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_26"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-195",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 473.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_26"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-196",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 509.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_27"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-197",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 491.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_27"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-198",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 527.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_28"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-199",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 509.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_28"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-200",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 545.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_29"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-201",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 527.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_29"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-202",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 563.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_30"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-203",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 545.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_30"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-204",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 581.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_31"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-205",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_31"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-206",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 599.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_32"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-207",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 581.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_32"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-208",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 617.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_33"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-209",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 599.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_33"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-210",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 635.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_34"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-211",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 617.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_34"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-212",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 653.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_35"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-213",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 635.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_35"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-214",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 671.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_36"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-215",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 653.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_36"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-216",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 689.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_37"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-217",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 671.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_37"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-218",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 707.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_38"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-219",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 689.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_38"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-220",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 725.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_39"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-221",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 707.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_39"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-222",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 743.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_40"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-223",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 725.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_40"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-224",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 761.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_41"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-225",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 743.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_41"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-226",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 779.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_42"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-227",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 761.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_42"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-228",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 797.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_43"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-229",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 779.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_43"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-230",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 815.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_44"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-231",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 797.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_44"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-232",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 833.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_45"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-233",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 815.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_45"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-234",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 851.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_46"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-235",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 833.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_46"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-236",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 869.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_47"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-237",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 851.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_47"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-238",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 887.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_48"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-239",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 869.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_48"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-240",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 905.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_49"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-241",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 887.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_49"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-242",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 923.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_50"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-243",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 905.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_50"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-244",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 941.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_51"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-245",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 923.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_51"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-246",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 959.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_52"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-247",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 941.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_52"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-248",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 977.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_53"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-249",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 959.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_53"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-250",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 995.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_54"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-251",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 977.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_54"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-252",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1013.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_55"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-253",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 995.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_55"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-254",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1031.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_56"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-255",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1013.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_56"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-256",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1049.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_57"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-257",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1031.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_57"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-258",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1067.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_58"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-259",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1049.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_58"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-260",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1085.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_59"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-261",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1067.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_59"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-262",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1103.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_60"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-263",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1085.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_60"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-264",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1121.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_61"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-265",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1103.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_61"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-266",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1139.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_62"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-267",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1121.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_62"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-268",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1157.0, 40.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "inlet_63"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-269",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1139.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_63"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-271",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1157.0, 140.0, 16.0, 16.0 ],
					"style" : "",
					"varname" : "outlet_64"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bbb.detail.osc.route.js",
				"bootpath" : "~/Documents/Max 7/Library/bbb-max/js/detail",
				"patcherrelativepath" : "../js/detail",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
