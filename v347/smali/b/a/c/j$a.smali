.class final Lb/a/c/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:[Lb/a/c/j$a;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/16 v0, 0x100

    new-array v0, v0, [Lb/a/c/j$a;

    iput-object v0, p0, Lb/a/c/j$a;->a:[Lb/a/c/j$a;

    .line 209
    iput v1, p0, Lb/a/c/j$a;->b:I

    .line 210
    iput v1, p0, Lb/a/c/j$a;->c:I

    .line 211
    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/c/j$a;->a:[Lb/a/c/j$a;

    .line 221
    iput p1, p0, Lb/a/c/j$a;->b:I

    .line 222
    and-int/lit8 v0, p2, 0x7

    .line 223
    if-nez v0, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lb/a/c/j$a;->c:I

    .line 224
    return-void
.end method

.method static synthetic a(Lb/a/c/j$a;)[Lb/a/c/j$a;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lb/a/c/j$a;->a:[Lb/a/c/j$a;

    return-object v0
.end method

.method static synthetic b(Lb/a/c/j$a;)I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lb/a/c/j$a;->b:I

    return v0
.end method

.method static synthetic c(Lb/a/c/j$a;)I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lb/a/c/j$a;->c:I

    return v0
.end method
