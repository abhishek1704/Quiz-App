class Questions {
  String que;
  String op1, op2, op3, op4;
  String imgUrl;
  String answer;

  Questions({this.que, this.op1, this.op2, this.op3, this.op4, this.answer, this.imgUrl});

  String getQue() {
    return this.que;
  }

  String getOp1() {
    return this.op1;
  }

  String getOp2() {
    return this.op2;
  }

  String getOp3() {
    return this.op3;
  }

  String getOp4() {
    return this.op4;
  }

  String getAnswer() {
    return this.answer;
  }

  String getImgUrl() {
    return this.imgUrl;
  }
  void setQue(String que) {
    this.que = que;
  }

  void setOp1(String op1) {
    this.op1 = op1;
  }

  void setOp2(String op2) {
    this.op2 = op2;
  }

  void setOp3(String op3) {
    this.op3 = op3;
  }

  void setOp4(String op4) {
    this.op4 = op4;
  }

  void setAnswer(String answer) {
    this.answer = answer;
  }

  void setImgUrl(String imgUrl) {
    this.imgUrl = imgUrl;
  }

}