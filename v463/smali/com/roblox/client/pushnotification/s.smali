.class public abstract Lcom/roblox/client/pushnotification/s;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/c/a/ac;

.field private b:Landroid/content/Context;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    new-instance v0, Lcom/roblox/client/ae/i$a;

    invoke-direct {v0}, Lcom/roblox/client/ae/i$a;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/pushnotification/s;->a:Lcom/c/a/ac;

    .line 34
    iput-object p1, p0, Lcom/roblox/client/pushnotification/s;->b:Landroid/content/Context;

    .line 35
    iput-wide p2, p0, Lcom/roblox/client/pushnotification/s;->c:J

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 75
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-static {p1}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/c/a/t;->a(Ljava/lang/String;)Lcom/c/a/x;

    move-result-object p1

    iget-object p2, p0, Lcom/roblox/client/pushnotification/s;->a:Lcom/c/a/ac;

    .line 77
    invoke-virtual {p1, p2}, Lcom/c/a/x;->a(Lcom/c/a/ac;)Lcom/c/a/x;

    move-result-object p1

    new-instance p2, Lcom/roblox/client/pushnotification/s$1;

    invoke-direct {p2, p0, v0}, Lcom/roblox/client/pushnotification/s$1;-><init>(Lcom/roblox/client/pushnotification/s;Landroid/widget/ImageView;)V

    .line 78
    invoke-virtual {p1, v0, p2}, Lcom/c/a/x;->a(Landroid/widget/ImageView;Lcom/c/a/e;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .line 40
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object p1

    iget-wide v0, p0, Lcom/roblox/client/pushnotification/s;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/pushnotification/o;->a(J)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 41
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/s;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 43
    :try_start_0
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->i()Lcom/roblox/platform/http/c/k;

    move-result-object v0

    iget-wide v1, p0, Lcom/roblox/client/pushnotification/s;->c:J

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "150x150"

    const-string v3, "Png"

    const/4 v4, 0x0

    .line 47
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 44
    invoke-interface {v0, v1, v2, v3, v5}, Lcom/roblox/platform/http/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Le/b;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Le/b;->a()Le/l;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Le/l;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Le/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;->data:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;

    iget-object p1, v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailData;->imageUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method public abstract a(Landroid/graphics/Bitmap;)V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 64
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    iget-wide v1, p0, Lcom/roblox/client/pushnotification/s;->c:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/roblox/client/pushnotification/o;->a(JLjava/lang/String;)Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/roblox/client/pushnotification/s;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/pushnotification/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/s;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/s;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/s;->a(Ljava/lang/String;)V

    return-void
.end method
