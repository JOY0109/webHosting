"use strict";

// Class definition
var KTFormsDaterangepickerDemos = function() {
	var today = new Date();

	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);

	var dateString = year + '-' + month  + '-' + day;

	//console.log(dateString);
	
    // Private functions
    var example1 = function(element) {
        $("#kt_daterangepicker_1").daterangepicker();
    }

    var example2 = function(element) {
        $("#kt_daterangepicker_2").daterangepicker({
            timePicker: true,
            startDate: moment().startOf("hour"),
            endDate: moment().startOf("hour").add(32, "hour"),
            locale: {
                format: "M/DD hh:mm A"
            }
        });
    }

    var example3 = function(element) {
        $("#kt_daterangepicker_3").daterangepicker({
                singleDatePicker: true,
                showDropdowns: true,
                minYear: 1901,
                maxYear: parseInt(moment().format("YYYY"),10)
            }, function(start, end, label) {
                var years = moment().diff(start, "years");
                alert("You are " + years + " years old!");
            }
        );
    }

    var example4 = function(element) {
        var start = moment().subtract(29, "days");
        var end = moment();

        function cb(start, end) {
            $("#kt_daterangepicker_4").html(start.format("MMMM D, YYYY") + " - " + end.format("MMMM D, YYYY"));
        }

        $("#kt_daterangepicker_4").daterangepicker({
            startDate: start,
            endDate: end,
            ranges: {
            "Today": [moment(), moment()],
            "Yesterday": [moment().subtract(1, "days"), moment().subtract(1, "days")],
            "Last 7 Days": [moment().subtract(6, "days"), moment()],
            "Last 30 Days": [moment().subtract(29, "days"), moment()],
            "This Month": [moment().startOf("month"), moment().endOf("month")],
            "Last Month": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")]
            }
        }, cb);

        cb(start, end);
    }

    var example5 = function(element) {
        $("#kt_daterangepicker_5").daterangepicker();
    }    

    var dateTest = function(element) {
        $("#kt_daterangepicker_Test").daterangepicker({
            //singleDatePicker: true,
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                "firstDay": 1
            },
            "startDate": "2020-10-21",
            "endDate": "2020-10-23",
            "drops": "down"
        }, function (start, end, label) {
            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
        });
    }    

    
    var startDate = function(element) {
    	
    	$("#pop_startdate").daterangepicker({
            singleDatePicker: true,
            autoApply: true,               
            autoUpdateInput: false,                
            singleClasses: "",
            locale: {
            	"format": "YYYY-MM-DD",
                "separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토" ],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                "firstDay": 0
            }
        });

    	$("#pop_startdate").on('apply.daterangepicker', function (ev, picker) {
            $(this).val(picker.startDate.format('YYYY-MM-DD'));
        });

    	$("#pop_startdate").on('cancel.daterangepicker', function (ev, picker) {
            $(this).val('');
        });
        
    }   
    
    
    var endDate = function(element) {
    	
    	$("#pop_enddate").daterangepicker({
            singleDatePicker: true,
            autoApply: true,               
            autoUpdateInput: false,                
            singleClasses: "",
            locale: {
            	"format": "YYYY-MM-DD",
                "separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토" ],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                "firstDay": 0
            }
        });

    	$("#pop_enddate").on('apply.daterangepicker', function (ev, picker) {
            $(this).val(picker.startDate.format('YYYY-MM-DD'));
        });

    	$("#pop_enddate").on('cancel.daterangepicker', function (ev, picker) {
            $(this).val('');
        });
    	
        
    }   

    return {
        // Public Functions
        init: function(element) {
            example1();
            example2();
            example3();
            example4();
            example5();
            dateTest();
            startDate();
            endDate();
        }
    };
}();

// On document ready
KTUtil.onDOMContentLoaded(function() {
    KTFormsDaterangepickerDemos.init();
});
