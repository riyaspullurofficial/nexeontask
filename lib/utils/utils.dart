String getDocType({required int docTypeInt}) {
  switch (docTypeInt) {
    case 0:
      {
        return "image";
      }
      break;

    case 1:
      {
        return "Video";
      }
      break;
    case 2:
      {
        return "Pdf";
      }
      break;

    case 3:
      {
        return "Audio";
      }
      break;
    case 4:
      {
        return "Document";
      }
      break;

    default:
      {
        return "";
      }
      break;
  }
}
