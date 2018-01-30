var vMemberTable           =   null;
var vProductTable           =   null;
var basicTable = function () {    
    var initMemberTable = function () {
        vMemberTable = $('#tbl-member').DataTable({
            columns: [           
                { data: "checked"            },                        
                { data: "fullname"      },
                { data: "email"      },
                { data: "mobilephone"      },
                { data: "address"         },                
            ]
        });        
    };        
    var initProductTable = function () {
        vProductTable = $('#tbl-product').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },                
                { data: "fullname"      },
                { data: "alias"         },
                { data: "category_name"         },                            
                { data: "image"         },                
                { data: "status"        },                                
                { data: "edited"        },         
                { data: "deleted"       },                
            ]            
        });        
    };
    return {
        init: function () {
            if (!jQuery().dataTable){
                return;        
            }        
            initMemberTable();    
            initProductTable();        
        }
    };
}();
