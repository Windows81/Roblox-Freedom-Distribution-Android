.class final Lc/a/c/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:[Lc/a/c/j$a;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lc/a/c/j$a;

    .line 208
    iput-object v0, p0, Lc/a/c/j$a;->a:[Lc/a/c/j$a;

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lc/a/c/j$a;->b:I

    .line 210
    iput v0, p0, Lc/a/c/j$a;->c:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lc/a/c/j$a;->a:[Lc/a/c/j$a;

    .line 221
    iput p1, p0, Lc/a/c/j$a;->b:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 223
    :cond_0
    iput p1, p0, Lc/a/c/j$a;->c:I

    return-void
.end method

.method static synthetic a(Lc/a/c/j$a;)[Lc/a/c/j$a;
    .locals 0

    .line 195
    iget-object p0, p0, Lc/a/c/j$a;->a:[Lc/a/c/j$a;

    return-object p0
.end method

.method static synthetic b(Lc/a/c/j$a;)I
    .locals 0

    .line 195
    iget p0, p0, Lc/a/c/j$a;->b:I

    return p0
.end method

.method static synthetic c(Lc/a/c/j$a;)I
    .locals 0

    .line 195
    iget p0, p0, Lc/a/c/j$a;->c:I

    return p0
.end method
