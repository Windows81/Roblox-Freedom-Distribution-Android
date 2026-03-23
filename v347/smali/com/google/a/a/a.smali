.class Lcom/google/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/i;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    if-eqz p2, :cond_0

    const/16 v0, 0xb

    .line 22
    :goto_0
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p2, :cond_0

    const/16 v0, 0xb

    .line 29
    :goto_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
