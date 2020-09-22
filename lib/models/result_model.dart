class ResultModel {

  double areaFloor;
  int piecesByWidth;
  int piecesByLength;
  double pricePerPiece;


  ResultModel({
    this.areaFloor,
    this.piecesByWidth,
    this.piecesByLength,
    this.pricePerPiece,
  });

  get amountPieces => piecesByWidth * piecesByLength;
  get amountFooter => piecesByWidth + piecesByLength;
  get amountPiecesAndFooter => amountPieces + amountFooter;
  get areaWithoutFooter => amountPieces * areaFloor;
  get areaWithFooter => amountPiecesAndFooter * areaFloor;
  get totalPrice => amountPiecesAndFooter * pricePerPiece;
}
