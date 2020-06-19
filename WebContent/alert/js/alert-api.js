$(function(){	
	$('.alert-api-list').css('height',$(window).height());
   	$(window).scroll(function(){

   		if($(window).scrollTop() >= 130){
   			$('.alert-api-list').css({
   				'top' : $(window).scrollTop() - 130
   			})
   		}else{
   			$('.alert-api-list').css({
   				'top' : 0
   			})
   		}
   	})

   	$(document).delegate('.alert_list a','click',function(){
   		$('.alert_list a').removeClass('alert-api-hover');
   		$(this).addClass('alert-api-hover');
   	})

	SyntaxHighlighter.all();

	var M = {

	}

	// ��ťһ1
	$(document).delegate(".alert-btn1",'click',function(){
		if(M.dialog1){
			return M.dialog1.show();
		}
		M.dialog1 = jqueryAlert({
			'content' : 'hello ����Ա...',
			'closeTime' : 2000,
			'end'       : function(){
				console.log('�ѹرյ���')
			}
		})
	})
	// ��ťһ2
	$(document).delegate(".alert-btn11",'click',function(){
		if(M.dialog11){
			return M.dialog11.show();
		}
		M.dialog11 = jqueryAlert({
			'icon'    : 'img/right.png',
			'content' : $(".alert-api-txt").html(),
			'closeTime' : 2000,
			'end'       : function(){
				console.log('�ѹرյ���')
			}
		})
	})
	// ��ťһ3
	$(document).delegate(".alert-btn12",'click',function(){
		if(M.dialog12){
			return M.dialog12.show();
		}
		M.dialog12 = jqueryAlert({
			'icon'    : 'img/error.png',
			'content' : 'hello ����Ա...',
			'closeTime' : 2000,
			'end'       : function(){
				console.log('�ѹرյ���')
			}
		})
	})
	// ��ťһ4
	$(document).delegate(".alert-btn13",'click',function(){
		if(M.dialog13){
			return M.dialog13.show();
		}
		M.dialog13 = jqueryAlert({
			'icon'    : 'img/warning.png',
			'content' : 'hello ����Ա...',
			'closeTime' : 2000,
			'end'       : function(){
				console.log('�ѹرյ���')
			}
		})
	})
	// ��ť��
	$(document).delegate(".alert-btn2",'click',function(){
		if(M.dialog2){
			return M.dialog2.show();
		}
		M.dialog2 = jqueryAlert({
			'content' : 'hello �� �� Ա ...',
			'modal'   : true,
			'end'       : function(){
				console.log('�ѹرյ���')
			},
			'buttons' :{
				'ȷ��' : function(){
					M.dialog2.close();
				}
			}
		})
	})
	// ��ť��
	$(document).delegate(".alert-btn3",'click',function(){
		if(M.dialog3){
			return M.dialog3.show();
		}
		M.dialog3 = jqueryAlert({
			'title'   : 'alertjs��ʾ',
			'content' : '��ӭʹ��alertjs���� ...',
			'modal'   : true,
			'end'       : function(){
				console.log('�ѹرյ���')
			},
			'buttons' :{
				'ȷ��' : function(){
					M.dialog3.close();
				},
				'�Ҳ���' : function(){
					if(M.dialog31){
						return M.dialog31.show();
					}
					M.dialog31 = jqueryAlert({
						'content' : '�Ҳ��ǳ���Ա...'
					})
				}
			}
		})
	})

	// ��ť��
	$(document).delegate(".alert-btn4",'click',function(){
		if(M.dialog4){
			return M.dialog4.show();
		}
		M.dialog4 = jqueryAlert({
			'title'   : 'alertjs��ʾ',
			'content' : '��ӭʹ��alertjs���� ...',
			'modal'   : true,
			'animateType' : '',
			'end'       : function(){
				console.log('�ѹرյ���')
			},
			'buttons' :{
				'ȷ��' : function(){
					M.dialog4.close();
				},
				'��ʹ��' : function(){
					if(M.dialog41){
						return M.dialog41.show();
					}
					M.dialog41 = jqueryAlert({
						'content' : 'ף���ҵ������õ�...'
					})
				}
			}
		})
	})

	var alertContent = '<div class="protocol">\
	   <h3 align="center">�û�ע��Э��</h3>\
	   <p>\
	    </p><h4>һ������</h4>\
	    1.1  ������������Ȩ����ӪȨ������������Ԫ�Ƽ����޹�˾���С� <br>\
	1.2  �û���ע��֮ǰ��Ӧ����ϸ�Ķ���Э�飬��ͬ�����ر�Э��󷽿ɳ�Ϊע���û���һ��ע��ɹ������û��뱣����֮���Զ��γ�Э���ϵ���û�Ӧ���ܱ�Э���Լ�����û���ʹ������ķ�����Ʒʱ��Ӧ��ͬ��������Э�����ʹ�á�  <br>\
	1.3 ��Э������ɱ�������ʱ���£��û�Ӧ����ʱ��ע��ͬ�Ȿվ���е�֪ͨ���񡣱�վ��֪ͨ�����桢�������������������Ǳ�Э���һ���֡�  \
	   <p></p>\
	   <p>\
	   </p><h4>������������</h4>\
	   2.1 �������ľ��������ɱ�վ����ʵ������ṩ�� <br>\
	2.2 ��վ���ṩ��ص�������񣬳���֮���������������йص��豸(����˵��ԡ��ֻ�������������뻥�������ƶ����йص�װ��)������ķ���(��Ϊ���뻥������֧���ĵ绰�Ѽ������ѡ�Ϊʹ���ƶ�����֧�����ֻ���)��Ӧ���û����и�����\
	   <p></p>\
	   <p>\
	    </p><h4>�����û��˺�</h4>\
	    3.1 ����վע��ϵͳ���ע�����ͨ�������֤���û�����Ϊ��ʽ�û������Ի�ñ�վ�涨�û���Ӧ���е�һ��Ȩ�ޣ�δ����֤�����б�վ�涨�Ĳ��ֻ�ԱȨ�ޡ���������Ȩ�Ի�Ա��Ȩ����ƽ��б���� <br>\
	3.2 �û�ֻ�ܰ���ע��Ҫ��ʹ����ʵ�����������֤��ע�ᡣ�û�������֤������ʺŵİ�ȫ���û����ø�������ʺ������е�һ�л������κ���ʧ���𺦣����û����ге�ȫ�����Σ���վ���е��κ����Ρ����û������ʺ��⵽δ��Ȩ��ʹ�û��������κΰ�ȫ���⣬Ӧ�����޸��ʺ����벢���Ʊ��ܣ����б�Ҫ����֪ͨ��վ����ڿ���Ϊ���û��ı�����������ʺŷǷ�ʹ�ã���վ���е��κ����Ρ� \
	  </div>'

	// ��ť��
	$(document).delegate(".alert-btn5",'click',function(){
		if(M.dialog5){
			return M.dialog5.show();
		}
		M.dialog5 = jqueryAlert({
			'content' : alertContent ,
			'modal'   : true,
			'contentTextAlign' : 'left',
			'width'   : '400px',
			'animateType' : 'linear',
			'end'       : function(){
				console.log('�ѹرյ���')
			},
			'buttons' :{
				'��ͬ��' : function(){
					M.dialog5.close();
				},
				'ͬ��' : function(){
					if(M.dialog51){
						return M.dialog51.show();
					}
					M.dialog51 = jqueryAlert({
						'content' : 'ͬ��Ҳ����ע��Ŷ...'
					})
				}
			}
		})
	})

	// ��ť��
	$(document).delegate(".alert-btn6",'click',function(){
		if(M.dialog6){
			return M.dialog6.show();
		}
		M.dialog6 = jqueryAlert({
			'style'   : 'pc',
			'title'   : '����ҳ',
			'content' :  $("#alert-blockquote"),
			'modal'   : true,
			'contentTextAlign' : 'left',
			'width'   : 'auto',
			'animateType' : 'linear',
			'end'       : function(){
				console.log('�ѹرյ���')
			},
			'buttons' :{
				'�ر�' : function(){
					M.dialog6.close();
				},
			}
		})
	})

	// ��ť��
	$(document).delegate(".alert-btn7",'click',function(){
		if(M.dialog7){
			return M.dialog7.show();
		}
		M.dialog7 = jqueryAlert({
			'style'   : 'pc',
			'title'   : 'iframe��',
			'content' :  alertContent,
			'modal'   : true,
			'contentTextAlign' : 'left',
			'width'   : '300',
			'height'  : '200',
			'animateType' : 'linear',
			'end'       : function(){
				console.log('�ѹرյ���')
			},
			'buttons' :{
				'�ر�' : function(){
					M.dialog7.close();
				},
			}
		})
	})

	// ��ť��
	$(document).delegate(".alert-btn8",'click',function(){
		if(M.dialog8){
			return M.dialog8.show();
		}
		M.dialog8 = jqueryAlert({
			'style'   : 'pc',
			'title'   : 'iframe��',
			'content' :  $(".alert-box"),
			'modal'   : true,
			'contentTextAlign' : 'left',
			'width'   : '90%',
			'height'  : '90%',
			'animateType': 'scale',
			'end'       : function(){
				console.log('�ѹرյ���')
			}
		})
	})


	// ��ť��
	$(document).delegate(".alert-btn9",'click',function(){
		if(M.dialog9){
			return M.dialog9.show();
		}
		M.dialog9 = jqueryAlert({
			'style'   : 'pc',
			'title'   : 'pc����',
			'content' :  'PC����ͨ����������...',
			'modal'   : true,
			'contentTextAlign' : 'left',
			'animateType': 'scale',
			'bodyScroll' : 'true',
			'end'       : function(){
				console.log('�ѹرյ���')
			},
			'buttons' : {
				'�ر�' : function(){
					M.dialog9.close();
				},
				'ȥ��ҳ' : function(){
					location.href="http://fy.035k.com";
				}
			}
		})
	})


	$(document).delegate('.alert-btn10','click',function(){

		if(M.actionsheet){
			return M.actionsheet.show();
		}
		M.actionsheet = jqueryAlert({
			'style' : 'actionsheet',
			'title'   : '����һ������',
			"className"    : '', //�������
			'modal'   : true,
			'actionsheetCloseText' : 'ȡ��',
			'end'       : function(){
				console.log('�ѹرյ���')
			},
			'buttons' :{
				'����' : function(){
					if(M.actionsheet11){
						return M.actionsheet11.show();
					}
					M.actionsheet11 = jqueryAlert({
						'content' : '������˷������'
					})
				},
				'�˵�' : function(){
					if(M.actionsheet12){
						return M.actionsheet12.show();
					}
					M.actionsheet12 = jqueryAlert({
						'content' : '������˲˵�����...'
					})
				},
				'ʾ��һ' : function(){
					if(M.actionsheet13){
						return M.actionsheet13.show();
					}
					M.actionsheet13 = jqueryAlert({
						'content' : '�������ʾ��һ����...'
					})
				},
				'ʾ����' : function(){
					if(M.actionsheet14){
						return M.actionsheet14.show();
					}
					M.actionsheet14 = jqueryAlert({
						'content' : '�������ʾ��������...'
					})
				},
			}
		})
	})
})