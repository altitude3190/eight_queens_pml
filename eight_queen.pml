#define MAX_COL 8

byte result[8];

bool a[8];  /* horizon line */
bool b[15]; /* positive diagonal line */
bool c[15]; /* negative diagonal line */
/*
inlile Choose() {
    if
    :: row = 1
    :: row = 2
    :: row = 3
    :: row = 4
    :: row = 5
    :: row = 6
    :: row = 7
    :: row = 8
    fi
}
*/
active proctype Queens() {

  byte col = 1; /* 1 <= col <= 8 */
  byte row;     /* 1 <= row <= 8 */

  do
  :: if
     :: row = 1
     :: row = 2
     :: row = 3
     :: row = 4
     :: row = 5
     :: row = 6
     :: row = 7
     :: row = 8
     fi
    enda: !a[row-1];
    endb: !b[row+col-2];
    endc: !c[row-col+7];
    a[row-1] = true;
    b[row+col-2] = true;
    c[row-col+7] = true;
    result[col-1] = row
    if
    :: col == 8 -> break
    :: else -> col++
    fi
  od;

  _ = result[0]

  assert(false)

}
