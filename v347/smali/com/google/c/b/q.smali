.class public final Lcom/google/c/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 324
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/c/a/c;->a(Ljava/lang/String;)Lcom/google/c/a/c;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/c/a/c;->b(Ljava/lang/String;)Lcom/google/c/a/c;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/q;->a:Lcom/google/c/a/c;

    return-void
.end method

.method static a(I)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 313
    const-string v0, "size"

    invoke-static {p0, v0}, Lcom/google/c/b/p;->a(ILjava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method
