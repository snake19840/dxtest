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
                         message: 'ɾ���ɹ�!'
                       });
                      
                 }).catch((error)=>{
                     this.$notify.error({
                            title: '����',
                            message: `ɾ��ʧ��`,
                                duration:1500
                          });
                           location.href = "Testindex.jsp";
                 });

*/