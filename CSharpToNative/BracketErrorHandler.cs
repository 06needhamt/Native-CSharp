namespace Compiler
{
    internal class BracketErrorHandler
    {
        public enum ErrorTypes
        {
            UnknownError = -1,
            NoError = 0,
            MissingOpeningBracket = 1,
            MissingClosingBracket = 2,
            MissingOpeningSquareBracket = 3,
            MissingClosingSquareBracket = 4,
            MissingOpeningCurlyBracket = 5,
            MissingClosingCurlyBracket = 6
        }

        private readonly ErrorTypes error;
        private readonly int openingLocation;
        private readonly int closingLocation;
        private readonly int lineNumber;

        public BracketErrorHandler(int ErrorCode, int openingLoc, int closingLoc, int lineno)
        {
            this.error = (ErrorTypes)ErrorCode;
            this.openingLocation = openingLoc;
            this.closingLocation = closingLoc;
            this.lineNumber = lineno;
        }

        public ErrorTypes getErrorType()
        {
            return this.error;
        }

        public int getOpeningLocation()
        {
            return this.openingLocation;
        }

        public int getClosingLocation()
        {
            return this.closingLocation;
        }

        public int getLineNumber()
        {
            return this.lineNumber;
        }

        public override string ToString()
        {
            return getError();
        }

        public string getError()
        {
            if ((int)error == 0)
            {
                return "No Error";
            }
            else if ((int)error == -1)
            {
                return "Unknown Error";
            }
            else
            {
                //StringBuilder sb = new StringBuilder("Expected A:");
                switch ((int)this.error)
                {
                    case 1:
                        {
                            return ("Expected A: " + " '(' " + "At Line " + this.lineNumber + " And Character " + this.closingLocation);
                        }
                    case 2:
                        {
                            return ("Expected A: " + " ')' " + "At Line " + this.lineNumber + " And Character " + this.openingLocation);
                        }
                    case 3:
                        {
                            return ("Expected A: " + " '[' " + "At Line " + this.lineNumber + " And Character " + this.closingLocation);
                        }
                    case 4:
                        {
                            return ("Expected A: " + " ']' " + "At Line " + this.lineNumber + " And Character " + this.openingLocation);
                        }
                    case 5:
                        {
                            return ("Expected A: " + " '{' " + "At Line " + this.lineNumber + " And Character " + this.closingLocation);
                        }
                    case 6:
                        {
                            return ("Expected A: " + " '}' " + "At Line " + this.lineNumber + " And Character " + this.openingLocation);
                        }
                    default:
                        {
                            return null;
                        }
                }
            }
        }
    }
}