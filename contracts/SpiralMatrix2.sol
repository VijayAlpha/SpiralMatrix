pragma solidity ^0.8.0;

contract SpiralMatrix2 {
    uint8[2][2] public waterGrid;

    constructor() {
        waterGrid = [
            [1, 2],
            [3, 4]
        ];
    }

    function spiralClockwise() public {
        uint8[2][2] memory newGrid;

        uint8 topRow = 0;
        uint8 bottomRow = 1;
        uint8 leftColumn = 0;
        uint8 rightColumn = 1;
        uint8 value = 1;

        while (topRow <= bottomRow && leftColumn <= rightColumn) {
            for (uint8 i = leftColumn; i <= rightColumn; i++) {
                newGrid[topRow][i] = waterGrid[topRow][i];
                value++;
            }
            topRow++;

            for (uint8 i = topRow; i <= bottomRow; i++) {
                newGrid[i][rightColumn] = waterGrid[i - 1][rightColumn];
                value++;
            }
            rightColumn--;

            if (topRow <= bottomRow) {
                for (uint8 i = rightColumn; i >= leftColumn; i--) {
                    newGrid[bottomRow][i] = waterGrid[bottomRow][i + 1];
                    value++;
                }
                bottomRow--;
            }

            if (leftColumn <= rightColumn) {
                for (uint8 i = bottomRow; i >= topRow; i--) {
                    newGrid[i][leftColumn] = waterGrid[i + 1][leftColumn];
                    value++;
                }
                leftColumn++;
            }
        }

        waterGrid = newGrid;
    }

    function spiralCounterClockwise() public {
        uint8[2][2] memory newGrid;

        uint8 topRow = 0;
        uint8 bottomRow = 1;
        uint8 leftColumn = 0;
        uint8 rightColumn = 1;
        uint8 value = 1;

        while (topRow <= bottomRow && leftColumn <= rightColumn) {
            for (uint8 i = leftColumn; i <= rightColumn; i++) {
                newGrid[bottomRow][i] = waterGrid[bottomRow][i];
                value++;
            }
            bottomRow--;

            for (uint8 i = bottomRow; i >= topRow; i--) {
                newGrid[i][leftColumn] = waterGrid[i + 1][leftColumn];
                value++;
            }
            leftColumn++;

            if (topRow <= bottomRow) {
                for (uint8 i = leftColumn; i <= rightColumn; i++) {
                    newGrid[topRow][i] = waterGrid[topRow][i - 1];
                    value++;
                }
                topRow++;
            }

            if (leftColumn <= rightColumn) {
                for (uint8 i = topRow; i <= bottomRow; i++) {
                    newGrid[i][rightColumn] = waterGrid[i - 1][rightColumn];
                    value++;
                }
                rightColumn--;
            }
        }

        waterGrid = newGrid;
    }
}
