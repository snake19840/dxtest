/*
axios({
                    url: url,
                       method: 'post',
                       data: dd,
                       enctype:'application/json',
                 }).then((response)=>{
                     this.dataShow=this.dataShowf(response.data.WarningGsons);
                     this.WarningGsons=response.data.WarningGsons;
//                   console.log(this.WarningGsons[0].rowData.USERPWD);
                       if(this.WarningGsons.length==0){
                           location.href = "Testindex.jsp";
                       }else{
                        this.isRec=  this.WarningGsons[0].rowData.USERPWD=="restore"? false:true;
                       }
                       this.$message({
                         type: 'success',
                         message: 'É¾³ý³É¹¦!'
                       });
                      
                 }).catch((error)=>{
                     this.$notify.error({
                            title: '´íÎó',
                            message: `É¾³ýÊ§°Ü`,
                                duration:1500
                          });
                           location.href = "Testindex.jsp";
                 });

*/