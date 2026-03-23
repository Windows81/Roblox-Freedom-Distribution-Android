.class Landroid/support/c/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[",
        "Landroid/support/v4/b/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Landroid/support/v4/b/b$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/c/a/e$1;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/support/c/a/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F[Landroid/support/v4/b/b$b;[Landroid/support/v4/b/b$b;)[Landroid/support/v4/b/b$b;
    .locals 4

    .prologue
    .line 184
    invoke-static {p2, p3}, Landroid/support/v4/b/b;->a([Landroid/support/v4/b/b$b;[Landroid/support/v4/b/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Landroid/support/c/a/e$a;->a:[Landroid/support/v4/b/b$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/e$a;->a:[Landroid/support/v4/b/b$b;

    invoke-static {v0, p2}, Landroid/support/v4/b/b;->a([Landroid/support/v4/b/b$b;[Landroid/support/v4/b/b$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    :cond_1
    invoke-static {p2}, Landroid/support/v4/b/b;->a([Landroid/support/v4/b/b$b;)[Landroid/support/v4/b/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/e$a;->a:[Landroid/support/v4/b/b$b;

    .line 193
    :cond_2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 194
    iget-object v1, p0, Landroid/support/c/a/e$a;->a:[Landroid/support/v4/b/b$b;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, Landroid/support/v4/b/b$b;->a(Landroid/support/v4/b/b$b;Landroid/support/v4/b/b$b;F)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Landroid/support/c/a/e$a;->a:[Landroid/support/v4/b/b$b;

    return-object v0
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    check-cast p2, [Landroid/support/v4/b/b$b;

    check-cast p3, [Landroid/support/v4/b/b$b;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/c/a/e$a;->a(F[Landroid/support/v4/b/b$b;[Landroid/support/v4/b/b$b;)[Landroid/support/v4/b/b$b;

    move-result-object v0

    return-object v0
.end method
