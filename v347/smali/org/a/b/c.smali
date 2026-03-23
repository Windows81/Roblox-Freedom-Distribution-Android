.class public Lorg/a/b/c;
.super Lorg/a/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/e/a;)Lorg/a/b/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation

    .prologue
    .line 10
    invoke-static {p1}, Lorg/a/b/c;->b(Lorg/a/e/f;)I

    move-result v0

    .line 11
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v0, Lorg/a/b/a$b;->a:Lorg/a/b/a$b;

    .line 13
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/a/b/a$b;->b:Lorg/a/b/a$b;

    goto :goto_0
.end method

.method public a(Lorg/a/e/b;)Lorg/a/e/b;
    .locals 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/a/b/b;->a(Lorg/a/e/b;)Lorg/a/e/b;

    .line 19
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    invoke-interface {p1, v0, v1}, Lorg/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object p1
.end method

.method public c()Lorg/a/b/a;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/a/b/c;

    invoke-direct {v0}, Lorg/a/b/c;-><init>()V

    return-object v0
.end method
