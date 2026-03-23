.class Lcom/c/a/r;
.super Lcom/c/a/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/c/a/j;

.field private final b:Lcom/c/a/aa;


# direct methods
.method public constructor <init>(Lcom/c/a/j;Lcom/c/a/aa;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/c/a/y;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/c/a/r;->a:Lcom/c/a/j;

    .line 38
    iput-object p2, p0, Lcom/c/a/r;->b:Lcom/c/a/aa;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/c/a/w;I)Lcom/c/a/y$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object p2, p0, Lcom/c/a/r;->a:Lcom/c/a/j;

    iget-object v0, p1, Lcom/c/a/w;->d:Landroid/net/Uri;

    iget p1, p1, Lcom/c/a/w;->c:I

    invoke-interface {p2, v0, p1}, Lcom/c/a/j;->a(Landroid/net/Uri;I)Lcom/c/a/j$a;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 52
    :cond_0
    iget-boolean v0, p1, Lcom/c/a/j$a;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/c/a/t$d;->b:Lcom/c/a/t$d;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/c/a/t$d;->c:Lcom/c/a/t$d;

    .line 54
    :goto_0
    invoke-virtual {p1}, Lcom/c/a/j$a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    new-instance p1, Lcom/c/a/y$a;

    invoke-direct {p1, v1, v0}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Lcom/c/a/t$d;)V

    return-object p1

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/c/a/j$a;->a()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_3

    return-object p2

    .line 65
    :cond_3
    sget-object p2, Lcom/c/a/t$d;->b:Lcom/c/a/t$d;

    const-wide/16 v2, 0x0

    if-ne v0, p2, :cond_5

    invoke-virtual {p1}, Lcom/c/a/j$a;->c()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 66
    :cond_4
    invoke-static {v1}, Lcom/c/a/ae;->a(Ljava/io/InputStream;)V

    .line 67
    new-instance p1, Lcom/c/a/r$a;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lcom/c/a/r$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_5
    :goto_1
    sget-object p2, Lcom/c/a/t$d;->c:Lcom/c/a/t$d;

    if-ne v0, p2, :cond_6

    invoke-virtual {p1}, Lcom/c/a/j$a;->c()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_6

    .line 70
    iget-object p2, p0, Lcom/c/a/r;->b:Lcom/c/a/aa;

    invoke-virtual {p1}, Lcom/c/a/j$a;->c()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/c/a/aa;->a(J)V

    .line 72
    :cond_6
    new-instance p1, Lcom/c/a/y$a;

    invoke-direct {p1, v1, v0}, Lcom/c/a/y$a;-><init>(Ljava/io/InputStream;Lcom/c/a/t$d;)V

    return-object p1
.end method

.method public a(Lcom/c/a/w;)Z
    .locals 1

    .line 42
    iget-object p1, p1, Lcom/c/a/w;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
