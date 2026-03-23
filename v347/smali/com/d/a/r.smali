.class Lcom/d/a/r;
.super Lcom/d/a/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/d/a/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/d/a/j;

.field private final b:Lcom/d/a/aa;


# direct methods
.method public constructor <init>(Lcom/d/a/j;Lcom/d/a/aa;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/d/a/y;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/d/a/r;->a:Lcom/d/a/j;

    .line 38
    iput-object p2, p0, Lcom/d/a/r;->b:Lcom/d/a/aa;

    .line 39
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/d/a/w;I)Lcom/d/a/y$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/d/a/r;->a:Lcom/d/a/j;

    iget-object v2, p1, Lcom/d/a/w;->d:Landroid/net/Uri;

    iget v3, p1, Lcom/d/a/w;->c:I

    invoke-interface {v0, v2, v3}, Lcom/d/a/j;->a(Landroid/net/Uri;I)Lcom/d/a/j$a;

    move-result-object v2

    .line 48
    if-nez v2, :cond_0

    move-object v0, v1

    .line 72
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-boolean v0, v2, Lcom/d/a/j$a;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/d/a/t$d;->b:Lcom/d/a/t$d;

    .line 54
    :goto_1
    invoke-virtual {v2}, Lcom/d/a/j$a;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    new-instance v1, Lcom/d/a/y$a;

    invoke-direct {v1, v3, v0}, Lcom/d/a/y$a;-><init>(Landroid/graphics/Bitmap;Lcom/d/a/t$d;)V

    move-object v0, v1

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lcom/d/a/t$d;->c:Lcom/d/a/t$d;

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v2}, Lcom/d/a/j$a;->a()Ljava/io/InputStream;

    move-result-object v3

    .line 60
    if-nez v3, :cond_3

    move-object v0, v1

    .line 61
    goto :goto_0

    .line 65
    :cond_3
    sget-object v1, Lcom/d/a/t$d;->b:Lcom/d/a/t$d;

    if-ne v0, v1, :cond_4

    invoke-virtual {v2}, Lcom/d/a/j$a;->c()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 66
    invoke-static {v3}, Lcom/d/a/ae;->a(Ljava/io/InputStream;)V

    .line 67
    new-instance v0, Lcom/d/a/r$a;

    const-string v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Lcom/d/a/r$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    sget-object v1, Lcom/d/a/t$d;->c:Lcom/d/a/t$d;

    if-ne v0, v1, :cond_5

    invoke-virtual {v2}, Lcom/d/a/j$a;->c()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 70
    iget-object v1, p0, Lcom/d/a/r;->b:Lcom/d/a/aa;

    invoke-virtual {v2}, Lcom/d/a/j$a;->c()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/d/a/aa;->a(J)V

    .line 72
    :cond_5
    new-instance v1, Lcom/d/a/y$a;

    invoke-direct {v1, v3, v0}, Lcom/d/a/y$a;-><init>(Ljava/io/InputStream;Lcom/d/a/t$d;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/d/a/w;)Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p1, Lcom/d/a/w;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 80
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
