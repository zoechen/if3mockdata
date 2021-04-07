[
 '{{repeat(78, 97)}}',
  {
    id: '{{index()}}',
    eartag: '{{floating(100000,1000000,0,"000000")}}',
    isActive: '{{bool()}}',
    swine_type:'S002',
    state_code: function(tags) {
      var s = ["00001", "01102", "00106"];
      return s[tags.integer(0, s.length - 1)];
    },
    estrus_code: '{{random("0", "1", "2")}}',
    post_code:"223400",
    zone_code:"22340020",
    house_code:"2234002010",
    pen_code:function(t,i){
      if(i<10){
        return '223400201000'+i;
      }else{
        return '22340020100'+i;
      }
    },
    row_code: '{{random("A","B","C","D","E")}}'
  } 
]