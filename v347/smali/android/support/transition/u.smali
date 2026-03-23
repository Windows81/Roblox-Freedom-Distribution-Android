.class public abstract Landroid/support/transition/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/u$b;,
        Landroid/support/transition/u$a;,
        Landroid/support/transition/u$c;
    }
.end annotation


# static fields
.field private static final g:[I

.field private static final h:Landroid/support/transition/l;

.field private static z:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/u$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/u$c;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/support/transition/u$b;

.field private I:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/support/transition/l;

.field a:J

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/transition/y;

.field e:Z

.field f:Landroid/support/transition/x;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Landroid/animation/TimeInterpolator;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/support/transition/ab;

.field private v:Landroid/support/transition/ab;

.field private w:[I

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/aa;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/u;->g:[I

    .line 169
    new-instance v0, Landroid/support/transition/u$1;

    invoke-direct {v0}, Landroid/support/transition/u$1;-><init>()V

    sput-object v0, Landroid/support/transition/u;->h:Landroid/support/transition/l;

    .line 203
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/u;->z:Ljava/lang/ThreadLocal;

    return-void

    .line 162
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/u;->i:Ljava/lang/String;

    .line 181
    iput-wide v4, p0, Landroid/support/transition/u;->j:J

    .line 182
    iput-wide v4, p0, Landroid/support/transition/u;->a:J

    .line 183
    iput-object v1, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    .line 186
    iput-object v1, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    .line 187
    iput-object v1, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    .line 190
    iput-object v1, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    .line 191
    iput-object v1, p0, Landroid/support/transition/u;->q:Ljava/util/ArrayList;

    .line 192
    iput-object v1, p0, Landroid/support/transition/u;->r:Ljava/util/ArrayList;

    .line 193
    iput-object v1, p0, Landroid/support/transition/u;->s:Ljava/util/ArrayList;

    .line 194
    iput-object v1, p0, Landroid/support/transition/u;->t:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Landroid/support/transition/ab;

    invoke-direct {v0}, Landroid/support/transition/ab;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    .line 196
    new-instance v0, Landroid/support/transition/ab;

    invoke-direct {v0}, Landroid/support/transition/ab;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    .line 197
    iput-object v1, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    .line 198
    sget-object v0, Landroid/support/transition/u;->g:[I

    iput-object v0, p0, Landroid/support/transition/u;->w:[I

    .line 207
    iput-object v1, p0, Landroid/support/transition/u;->A:Landroid/view/ViewGroup;

    .line 215
    iput-boolean v2, p0, Landroid/support/transition/u;->e:Z

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->B:Ljava/util/ArrayList;

    .line 223
    iput v2, p0, Landroid/support/transition/u;->C:I

    .line 226
    iput-boolean v2, p0, Landroid/support/transition/u;->D:Z

    .line 230
    iput-boolean v2, p0, Landroid/support/transition/u;->E:Z

    .line 233
    iput-object v1, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroid/support/transition/u;->h:Landroid/support/transition/l;

    iput-object v0, p0, Landroid/support/transition/u;->J:Landroid/support/transition/l;

    .line 261
    return-void
.end method

.method static synthetic a(Landroid/support/transition/u;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/transition/u;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/animation/Animator;Landroid/support/v4/g/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/u$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    if-eqz p1, :cond_0

    .line 894
    new-instance v0, Landroid/support/transition/u$2;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/u$2;-><init>(Landroid/support/transition/u;Landroid/support/v4/g/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    invoke-virtual {p0, p1}, Landroid/support/transition/u;->a(Landroid/animation/Animator;)V

    .line 908
    :cond_0
    return-void
.end method

.method private a(Landroid/support/transition/ab;Landroid/support/transition/ab;)V
    .locals 5

    .prologue
    .line 662
    new-instance v1, Landroid/support/v4/g/a;

    iget-object v0, p1, Landroid/support/transition/ab;->a:Landroid/support/v4/g/a;

    invoke-direct {v1, v0}, Landroid/support/v4/g/a;-><init>(Landroid/support/v4/g/m;)V

    .line 663
    new-instance v2, Landroid/support/v4/g/a;

    iget-object v0, p2, Landroid/support/transition/ab;->a:Landroid/support/v4/g/a;

    invoke-direct {v2, v0}, Landroid/support/v4/g/a;-><init>(Landroid/support/v4/g/m;)V

    .line 665
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/transition/u;->w:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 666
    iget-object v3, p0, Landroid/support/transition/u;->w:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 665
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :pswitch_0
    invoke-direct {p0, v1, v2}, Landroid/support/transition/u;->a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;)V

    goto :goto_1

    .line 671
    :pswitch_1
    iget-object v3, p1, Landroid/support/transition/ab;->d:Landroid/support/v4/g/a;

    iget-object v4, p2, Landroid/support/transition/ab;->d:Landroid/support/v4/g/a;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/u;->a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;Landroid/support/v4/g/a;Landroid/support/v4/g/a;)V

    goto :goto_1

    .line 675
    :pswitch_2
    iget-object v3, p1, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/u;->a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 679
    :pswitch_3
    iget-object v3, p1, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    iget-object v4, p2, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/u;->a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;Landroid/support/v4/g/f;Landroid/support/v4/g/f;)V

    goto :goto_1

    .line 684
    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/support/transition/u;->b(Landroid/support/v4/g/a;Landroid/support/v4/g/a;)V

    .line 685
    return-void

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1529
    iget-object v0, p0, Landroid/support/transition/ab;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1531
    if-ltz v0, :cond_0

    .line 1532
    iget-object v1, p0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 1534
    iget-object v1, p0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1539
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 1540
    if-eqz v0, :cond_1

    .line 1541
    iget-object v1, p0, Landroid/support/transition/ab;->d:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1543
    iget-object v1, p0, Landroid/support/transition/ab;->d:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1550
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1551
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1552
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1553
    iget-object v0, p0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/g/f;->d(J)I

    move-result v0

    if-ltz v0, :cond_5

    .line 1555
    iget-object v0, p0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1556
    if-eqz v0, :cond_2

    .line 1557
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/s;->a(Landroid/view/View;Z)V

    .line 1558
    iget-object v0, p0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V

    .line 1566
    :cond_2
    :goto_2
    return-void

    .line 1536
    :cond_3
    iget-object v1, p0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1545
    :cond_4
    iget-object v1, p0, Landroid/support/transition/ab;->d:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1561
    :cond_5
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/View;Z)V

    .line 1562
    iget-object v0, p0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p1}, Landroid/support/v4/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 542
    invoke-virtual {p1, v2}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 543
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {p2, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    .line 545
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p1, v2}, Landroid/support/v4/g/a;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/aa;

    .line 547
    iget-object v3, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v1, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 552
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;Landroid/support/v4/g/a;Landroid/support/v4/g/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    invoke-virtual {p3}, Landroid/support/v4/g/a;->size()I

    move-result v5

    .line 617
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 618
    invoke-virtual {p3, v4}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 619
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p3, v4}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 621
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    .line 623
    invoke-virtual {p2, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/aa;

    .line 624
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 625
    iget-object v6, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v2, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {p2, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 633
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;Landroid/support/v4/g/f;Landroid/support/v4/g/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/g/f",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/g/f",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    invoke-virtual {p3}, Landroid/support/v4/g/f;->b()I

    move-result v5

    .line 563
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 564
    invoke-virtual {p3, v4}, Landroid/support/v4/g/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 565
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p3, v4}, Landroid/support/v4/g/f;->b(I)J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 567
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    .line 569
    invoke-virtual {p2, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/aa;

    .line 570
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 571
    iget-object v6, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v2, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-virtual {p2, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 579
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 590
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 591
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 592
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 594
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    .line 596
    invoke-virtual {p2, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/aa;

    .line 597
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 598
    iget-object v6, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v2, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {p2, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 606
    :cond_1
    return-void
.end method

.method private static a(Landroid/support/transition/aa;Landroid/support/transition/aa;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1860
    iget-object v2, p0, Landroid/support/transition/aa;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1861
    iget-object v3, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1863
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    move v0, v1

    .line 1878
    :cond_0
    :goto_0
    return v0

    .line 1866
    :cond_1
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1871
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/g/a;Landroid/support/v4/g/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 642
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/g/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 643
    invoke-virtual {p1, v1}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    .line 644
    iget-object v3, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    iget-object v3, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 651
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/g/a;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 652
    invoke-virtual {p2, v2}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    .line 653
    iget-object v1, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v0, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 658
    :cond_3
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1596
    if-nez p1, :cond_1

    .line 1651
    :cond_0
    return-void

    .line 1599
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1600
    iget-object v0, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    :cond_3
    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1607
    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1608
    :goto_0
    if-ge v2, v4, :cond_4

    .line 1609
    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1608
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1614
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1615
    new-instance v0, Landroid/support/transition/aa;

    invoke-direct {v0}, Landroid/support/transition/aa;-><init>()V

    .line 1616
    iput-object p1, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    .line 1617
    if-eqz p2, :cond_8

    .line 1618
    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;)V

    .line 1622
    :goto_1
    iget-object v2, v0, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-virtual {p0, v0}, Landroid/support/transition/u;->c(Landroid/support/transition/aa;)V

    .line 1624
    if-eqz p2, :cond_9

    .line 1625
    iget-object v2, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    invoke-static {v2, p1, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    .line 1630
    :cond_5
    :goto_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Landroid/support/transition/u;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/u;->r:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1635
    :cond_6
    iget-object v0, p0, Landroid/support/transition/u;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1638
    :cond_7
    iget-object v0, p0, Landroid/support/transition/u;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 1639
    iget-object v0, p0, Landroid/support/transition/u;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 1640
    :goto_3
    if-ge v2, v3, :cond_a

    .line 1641
    iget-object v0, p0, Landroid/support/transition/u;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 1620
    :cond_8
    invoke-virtual {p0, v0}, Landroid/support/transition/u;->b(Landroid/support/transition/aa;)V

    goto :goto_1

    .line 1627
    :cond_9
    iget-object v2, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    invoke-static {v2, p1, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    goto :goto_2

    .line 1646
    :cond_a
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v1

    .line 1647
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1648
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/transition/u;->c(Landroid/view/View;Z)V

    .line 1647
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static o()Landroid/support/v4/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/u$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    sget-object v0, Landroid/support/transition/u;->z:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/a;

    .line 856
    if-nez v0, :cond_0

    .line 857
    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    .line 858
    sget-object v1, Landroid/support/transition/u;->z:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 860
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;Z)Landroid/support/transition/aa;
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/y;->a(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v0

    .line 1665
    :goto_0
    return-object v0

    .line 1664
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    .line 1665
    :goto_1
    iget-object v0, v0, Landroid/support/transition/ab;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    goto :goto_0

    .line 1664
    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    goto :goto_1
.end method

.method public a(J)Landroid/support/transition/u;
    .locals 1

    .prologue
    .line 339
    iput-wide p1, p0, Landroid/support/transition/u;->a:J

    .line 340
    return-object p0
.end method

.method public a(Landroid/support/transition/u$c;)Landroid/support/transition/u;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    .line 2034
    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2244
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2245
    iget-wide v2, p0, Landroid/support/transition/u;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/u;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2248
    :cond_0
    iget-wide v2, p0, Landroid/support/transition/u;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 2249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/u;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2251
    :cond_1
    iget-object v2, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    .line 2252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2254
    :cond_2
    iget-object v2, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 2255
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    iget-object v2, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move-object v2, v0

    move v0, v1

    .line 2257
    :goto_0
    iget-object v3, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 2258
    if-lez v0, :cond_4

    .line 2259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2261
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v2, v0

    .line 2264
    :cond_6
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2265
    :goto_1
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 2266
    if-lez v1, :cond_7

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2269
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2272
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2274
    :cond_9
    return-object v0
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1893
    if-nez p1, :cond_0

    .line 1894
    invoke-virtual {p0}, Landroid/support/transition/u;->k()V

    .line 1914
    :goto_0
    return-void

    .line 1896
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/u;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1897
    invoke-virtual {p0}, Landroid/support/transition/u;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1899
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/u;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1900
    invoke-virtual {p0}, Landroid/support/transition/u;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1902
    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/u;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1903
    invoke-virtual {p0}, Landroid/support/transition/u;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1905
    :cond_3
    new-instance v0, Landroid/support/transition/u$3;

    invoke-direct {v0, p0}, Landroid/support/transition/u$3;-><init>(Landroid/support/transition/u;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1912
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public abstract a(Landroid/support/transition/aa;)V
.end method

.method public a(Landroid/support/transition/u$b;)V
    .locals 0

    .prologue
    .line 2107
    iput-object p1, p0, Landroid/support/transition/u;->H:Landroid/support/transition/u$b;

    .line 2108
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    .line 1781
    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v1, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    invoke-direct {p0, v0, v1}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/support/transition/ab;)V

    .line 1783
    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/g/a;

    move-result-object v4

    .line 1784
    invoke-virtual {v4}, Landroid/support/v4/g/a;->size()I

    move-result v0

    .line 1785
    invoke-static {p1}, Landroid/support/transition/am;->b(Landroid/view/View;)Landroid/support/transition/aw;

    move-result-object v5

    .line 1786
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_5

    .line 1787
    invoke-virtual {v4, v3}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1788
    if-eqz v0, :cond_2

    .line 1789
    invoke-virtual {v4, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$a;

    .line 1790
    if-eqz v1, :cond_2

    iget-object v6, v1, Landroid/support/transition/u$a;->a:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/transition/u$a;->d:Landroid/support/transition/aw;

    .line 1791
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1792
    iget-object v6, v1, Landroid/support/transition/u$a;->c:Landroid/support/transition/aa;

    .line 1793
    iget-object v7, v1, Landroid/support/transition/u$a;->a:Landroid/view/View;

    .line 1794
    invoke-virtual {p0, v7, v2}, Landroid/support/transition/u;->a(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v8

    .line 1795
    invoke-virtual {p0, v7, v2}, Landroid/support/transition/u;->b(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v7

    .line 1796
    if-nez v8, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    iget-object v1, v1, Landroid/support/transition/u$a;->e:Landroid/support/transition/u;

    .line 1797
    invoke-virtual {v1, v6, v7}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 1798
    :goto_1
    if-eqz v1, :cond_2

    .line 1799
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1803
    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1786
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 1797
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1808
    :cond_4
    invoke-virtual {v4, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1815
    :cond_5
    iget-object v2, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v3, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v4, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/u;->a(Landroid/view/ViewGroup;Landroid/support/transition/ab;Landroid/support/transition/ab;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1816
    invoke-virtual {p0}, Landroid/support/transition/u;->e()V

    .line 1817
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/ab;Landroid/support/transition/ab;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/ab;",
            "Landroid/support/transition/ab;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/aa;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/g/a;

    move-result-object v14

    .line 706
    const-wide v8, 0x7fffffffffffffffL

    .line 707
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    .line 708
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 709
    const/4 v2, 0x0

    move v13, v2

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_8

    .line 710
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    .line 711
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/aa;

    .line 712
    if-eqz v2, :cond_d

    iget-object v4, v2, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 713
    const/4 v2, 0x0

    move-object v12, v2

    .line 715
    :goto_1
    if-eqz v3, :cond_c

    iget-object v2, v3, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 716
    const/4 v3, 0x0

    move-object v11, v3

    .line 718
    :goto_2
    if-nez v12, :cond_1

    if-nez v11, :cond_1

    .line 709
    :cond_0
    :goto_3
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    .line 722
    :cond_1
    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 723
    :goto_4
    if-eqz v2, :cond_0

    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/transition/u;->a(Landroid/view/ViewGroup;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;

    move-result-object v5

    .line 743
    if-eqz v5, :cond_0

    .line 746
    const/4 v2, 0x0

    .line 747
    if-eqz v11, :cond_7

    .line 748
    iget-object v6, v11, Landroid/support/transition/aa;->b:Landroid/view/View;

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/u;->a()[Ljava/lang/String;

    move-result-object v7

    .line 750
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    array-length v3, v7

    if-lez v3, :cond_b

    .line 751
    new-instance v4, Landroid/support/transition/aa;

    invoke-direct {v4}, Landroid/support/transition/aa;-><init>()V

    .line 752
    iput-object v6, v4, Landroid/support/transition/aa;->b:Landroid/view/View;

    .line 753
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/ab;->a:Landroid/support/v4/g/a;

    invoke-virtual {v2, v6}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    .line 754
    if-eqz v2, :cond_4

    .line 755
    const/4 v3, 0x0

    :goto_5
    array-length v10, v7

    if-ge v3, v10, :cond_4

    .line 756
    iget-object v10, v4, Landroid/support/transition/aa;->a:Ljava/util/Map;

    aget-object v17, v7, v3

    iget-object v0, v2, Landroid/support/transition/aa;->a:Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v19, v7, v3

    .line 757
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 756
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 722
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 760
    :cond_4
    invoke-virtual {v14}, Landroid/support/v4/g/a;->size()I

    move-result v7

    .line 761
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v7, :cond_a

    .line 762
    invoke-virtual {v14, v3}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 763
    invoke-virtual {v14, v2}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/u$a;

    .line 764
    iget-object v10, v2, Landroid/support/transition/u$a;->c:Landroid/support/transition/aa;

    if-eqz v10, :cond_6

    iget-object v10, v2, Landroid/support/transition/u$a;->a:Landroid/view/View;

    if-ne v10, v6, :cond_6

    iget-object v10, v2, Landroid/support/transition/u$a;->b:Ljava/lang/String;

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/u;->n()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 766
    iget-object v2, v2, Landroid/support/transition/u$a;->c:Landroid/support/transition/aa;

    invoke-virtual {v2, v4}, Landroid/support/transition/aa;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 768
    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v4

    :goto_7
    move-object v7, v2

    move-object v10, v3

    move-object v3, v6

    .line 777
    :goto_8
    if-eqz v10, :cond_0

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    if-eqz v2, :cond_5

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1, v12, v11}, Landroid/support/transition/x;->a(Landroid/view/ViewGroup;Landroid/support/transition/u;Landroid/support/transition/aa;Landroid/support/transition/aa;)J

    move-result-wide v4

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    long-to-int v6, v4

    invoke-virtual {v15, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v8, v4

    .line 783
    :cond_5
    new-instance v2, Landroid/support/transition/u$a;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/u;->n()Ljava/lang/String;

    move-result-object v4

    .line 784
    invoke-static/range {p1 .. p1}, Landroid/support/transition/am;->b(Landroid/view/View;)Landroid/support/transition/aw;

    move-result-object v6

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/transition/u$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/u;Landroid/support/transition/aw;Landroid/support/transition/aa;)V

    .line 785
    invoke-virtual {v14, v10, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 761
    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 775
    :cond_7
    iget-object v3, v12, Landroid/support/transition/aa;->b:Landroid/view/View;

    move-object v7, v2

    move-object v10, v5

    goto :goto_8

    .line 791
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_9

    .line 792
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    .line 793
    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 795
    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v8

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 796
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 792
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    .line 799
    :cond_9
    return-void

    :cond_a
    move-object v2, v4

    move-object v3, v5

    goto :goto_7

    :cond_b
    move-object v3, v5

    goto :goto_7

    :cond_c
    move-object v11, v3

    goto/16 :goto_2

    :cond_d
    move-object v12, v2

    goto/16 :goto_1
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1466
    invoke-virtual {p0, p2}, Landroid/support/transition/u;->a(Z)V

    .line 1467
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    .line 1468
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    .line 1469
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v1, v2

    .line 1470
    :goto_0
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1471
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1472
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1473
    if-eqz v0, :cond_3

    .line 1474
    new-instance v3, Landroid/support/transition/aa;

    invoke-direct {v3}, Landroid/support/transition/aa;-><init>()V

    .line 1475
    iput-object v0, v3, Landroid/support/transition/aa;->b:Landroid/view/View;

    .line 1476
    if-eqz p2, :cond_4

    .line 1477
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;)V

    .line 1481
    :goto_1
    iget-object v4, v3, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->c(Landroid/support/transition/aa;)V

    .line 1483
    if-eqz p2, :cond_5

    .line 1484
    iget-object v4, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    .line 1470
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1479
    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->b(Landroid/support/transition/aa;)V

    goto :goto_1

    .line 1486
    :cond_5
    iget-object v4, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 1490
    :goto_3
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1491
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1492
    new-instance v3, Landroid/support/transition/aa;

    invoke-direct {v3}, Landroid/support/transition/aa;-><init>()V

    .line 1493
    iput-object v0, v3, Landroid/support/transition/aa;->b:Landroid/view/View;

    .line 1494
    if-eqz p2, :cond_7

    .line 1495
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;)V

    .line 1499
    :goto_4
    iget-object v4, v3, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->c(Landroid/support/transition/aa;)V

    .line 1501
    if-eqz p2, :cond_8

    .line 1502
    iget-object v4, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    .line 1490
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1497
    :cond_7
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->b(Landroid/support/transition/aa;)V

    goto :goto_4

    .line 1504
    :cond_8
    iget-object v4, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    goto :goto_5

    .line 1508
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/transition/u;->c(Landroid/view/View;Z)V

    .line 1510
    :cond_a
    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/support/transition/u;->I:Landroid/support/v4/g/a;

    if-eqz v0, :cond_d

    .line 1511
    iget-object v0, p0, Landroid/support/transition/u;->I:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->size()I

    move-result v3

    .line 1512
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 1513
    :goto_6
    if-ge v1, v3, :cond_b

    .line 1514
    iget-object v0, p0, Landroid/support/transition/u;->I:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1515
    iget-object v5, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v5, v5, Landroid/support/transition/ab;->d:Landroid/support/v4/g/a;

    invoke-virtual {v5, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1517
    :cond_b
    :goto_7
    if-ge v2, v3, :cond_d

    .line 1518
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1519
    if-eqz v0, :cond_c

    .line 1520
    iget-object v1, p0, Landroid/support/transition/u;->I:Landroid/support/v4/g/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1521
    iget-object v5, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v5, v5, Landroid/support/transition/ab;->d:Landroid/support/v4/g/a;

    invoke-virtual {v5, v1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1525
    :cond_d
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 1574
    if-eqz p1, :cond_0

    .line 1575
    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    .line 1576
    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1577
    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->c()V

    .line 1583
    :goto_0
    return-void

    .line 1579
    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    .line 1580
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1581
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->c()V

    goto :goto_0
.end method

.method public a(Landroid/support/transition/aa;Landroid/support/transition/aa;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1834
    .line 1837
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1838
    invoke-virtual {p0}, Landroid/support/transition/u;->a()[Ljava/lang/String;

    move-result-object v3

    .line 1839
    if-eqz v3, :cond_2

    .line 1840
    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 1841
    invoke-static {p1, p2, v5}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    .line 1855
    :cond_0
    :goto_2
    return v2

    .line 1840
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1847
    :cond_2
    iget-object v0, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1848
    invoke-static {p1, p2, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    .line 1850
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method a(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 813
    iget-object v0, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    return v2

    .line 816
    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 820
    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 821
    :goto_1
    if-ge v1, v5, :cond_3

    .line 822
    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 823
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 828
    :cond_3
    iget-object v0, p0, Landroid/support/transition/u;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 829
    iget-object v0, p0, Landroid/support/transition/u;->q:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    :cond_4
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    .line 834
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v3

    .line 836
    goto :goto_0

    .line 838
    :cond_7
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v2, v3

    .line 839
    goto/16 :goto_0

    .line 841
    :cond_9
    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    .line 842
    goto/16 :goto_0

    .line 844
    :cond_a
    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 845
    :goto_2
    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 846
    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v3

    .line 847
    goto/16 :goto_0

    .line 845
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Landroid/support/transition/u;->a:J

    return-wide v0
.end method

.method b(Landroid/view/View;Z)Landroid/support/transition/aa;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1680
    iget-object v0, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    if-eqz v0, :cond_1

    .line 1681
    iget-object v0, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/y;->b(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v1

    .line 1704
    :cond_0
    :goto_0
    return-object v1

    .line 1683
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    move-object v4, v0

    .line 1684
    :goto_1
    if-eqz v4, :cond_0

    .line 1687
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1688
    const/4 v3, -0x1

    .line 1689
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_6

    .line 1690
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    .line 1691
    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    if-ne v0, p1, :cond_3

    .line 1700
    :goto_3
    if-ltz v2, :cond_5

    .line 1701
    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    .line 1702
    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    :goto_5
    move-object v1, v0

    .line 1704
    goto :goto_0

    .line 1683
    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    .line 1689
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1701
    :cond_4
    iget-object v0, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public b(J)Landroid/support/transition/u;
    .locals 1

    .prologue
    .line 366
    iput-wide p1, p0, Landroid/support/transition/u;->j:J

    .line 367
    return-object p0
.end method

.method public b(Landroid/support/transition/u$c;)Landroid/support/transition/u;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2054
    :cond_0
    :goto_0
    return-object p0

    .line 2050
    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2051
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2052
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Landroid/support/transition/u;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    return-object p0
.end method

.method public abstract b(Landroid/support/transition/aa;)V
.end method

.method public c()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Landroid/support/transition/u;->j:J

    return-wide v0
.end method

.method public c(Landroid/view/View;)Landroid/support/transition/u;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1095
    return-object p0
.end method

.method c(Landroid/support/transition/aa;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2178
    iget-object v0, p0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2179
    iget-object v0, p0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    invoke-virtual {v0}, Landroid/support/transition/x;->a()[Ljava/lang/String;

    move-result-object v3

    .line 2180
    if-nez v3, :cond_1

    .line 2194
    :cond_0
    :goto_0
    return-void

    .line 2183
    :cond_1
    const/4 v2, 0x1

    move v0, v1

    .line 2184
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 2185
    iget-object v4, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    aget-object v5, v3, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2190
    :goto_2
    if-nez v1, :cond_0

    .line 2191
    iget-object v0, p0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    invoke-virtual {v0, p1}, Landroid/support/transition/x;->a(Landroid/support/transition/aa;)V

    goto :goto_0

    .line 2184
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/support/transition/u;->m()Landroid/support/transition/u;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1716
    iget-boolean v0, p0, Landroid/support/transition/u;->E:Z

    if-nez v0, :cond_3

    .line 1717
    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/g/a;

    move-result-object v2

    .line 1718
    invoke-virtual {v2}, Landroid/support/v4/g/a;->size()I

    move-result v0

    .line 1719
    invoke-static {p1}, Landroid/support/transition/am;->b(Landroid/view/View;)Landroid/support/transition/aw;

    move-result-object v3

    .line 1720
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1721
    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u$a;

    .line 1722
    iget-object v4, v0, Landroid/support/transition/u$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/transition/u$a;->d:Landroid/support/transition/aw;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1724
    invoke-static {v0}, Landroid/support/transition/a;->a(Landroid/animation/Animator;)V

    .line 1720
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1727
    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1728
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    .line 1729
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1730
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1731
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1732
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->b(Landroid/support/transition/u;)V

    .line 1731
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1735
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/u;->D:Z

    .line 1737
    :cond_3
    return-void
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/support/transition/u;->j()V

    .line 875
    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/g/a;

    move-result-object v1

    .line 877
    iget-object v0, p0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 881
    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 882
    invoke-virtual {p0}, Landroid/support/transition/u;->j()V

    .line 883
    invoke-direct {p0, v0, v1}, Landroid/support/transition/u;->a(Landroid/animation/Animator;Landroid/support/v4/g/a;)V

    goto :goto_0

    .line 886
    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 887
    invoke-virtual {p0}, Landroid/support/transition/u;->k()V

    .line 888
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1748
    iget-boolean v0, p0, Landroid/support/transition/u;->D:Z

    if-eqz v0, :cond_3

    .line 1749
    iget-boolean v0, p0, Landroid/support/transition/u;->E:Z

    if-nez v0, :cond_2

    .line 1750
    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/g/a;

    move-result-object v2

    .line 1751
    invoke-virtual {v2}, Landroid/support/v4/g/a;->size()I

    move-result v0

    .line 1752
    invoke-static {p1}, Landroid/support/transition/am;->b(Landroid/view/View;)Landroid/support/transition/aw;

    move-result-object v4

    .line 1753
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1754
    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u$a;

    .line 1755
    iget-object v5, v0, Landroid/support/transition/u$a;->a:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/support/transition/u$a;->d:Landroid/support/transition/aw;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1757
    invoke-static {v0}, Landroid/support/transition/a;->b(Landroid/animation/Animator;)V

    .line 1753
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1760
    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1761
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    .line 1762
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1763
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1764
    :goto_1
    if-ge v2, v4, :cond_2

    .line 1765
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->c(Landroid/support/transition/u;)V

    .line 1764
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1769
    :cond_2
    iput-boolean v3, p0, Landroid/support/transition/u;->D:Z

    .line 1771
    :cond_3
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected j()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1925
    iget v0, p0, Landroid/support/transition/u;->C:I

    if-nez v0, :cond_1

    .line 1926
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1927
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    .line 1928
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1929
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1930
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1931
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->d(Landroid/support/transition/u;)V

    .line 1930
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1934
    :cond_0
    iput-boolean v3, p0, Landroid/support/transition/u;->E:Z

    .line 1936
    :cond_1
    iget v0, p0, Landroid/support/transition/u;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/u;->C:I

    .line 1937
    return-void
.end method

.method protected k()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1952
    iget v0, p0, Landroid/support/transition/u;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/u;->C:I

    .line 1953
    iget v0, p0, Landroid/support/transition/u;->C:I

    if-nez v0, :cond_5

    .line 1954
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1955
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    .line 1956
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1957
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 1958
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1959
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->a(Landroid/support/transition/u;)V

    .line 1958
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1962
    :goto_1
    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->b()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1963
    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1964
    if-eqz v0, :cond_1

    .line 1965
    invoke-static {v0, v2}, Landroid/support/v4/view/s;->a(Landroid/view/View;Z)V

    .line 1962
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1968
    :goto_2
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->b()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1969
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1970
    if-eqz v0, :cond_3

    .line 1971
    invoke-static {v0, v2}, Landroid/support/v4/view/s;->a(Landroid/view/View;Z)V

    .line 1968
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1974
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/u;->E:Z

    .line 1976
    :cond_5
    return-void
.end method

.method public l()Landroid/support/transition/l;
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Landroid/support/transition/u;->J:Landroid/support/transition/l;

    return-object v0
.end method

.method public m()Landroid/support/transition/u;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2213
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u;

    .line 2214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    .line 2215
    new-instance v2, Landroid/support/transition/ab;

    invoke-direct {v2}, Landroid/support/transition/ab;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    .line 2216
    new-instance v2, Landroid/support/transition/ab;

    invoke-direct {v2}, Landroid/support/transition/ab;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    .line 2217
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    .line 2218
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2221
    :goto_0
    return-object v0

    .line 2220
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 2221
    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Landroid/support/transition/u;->i:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2207
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
