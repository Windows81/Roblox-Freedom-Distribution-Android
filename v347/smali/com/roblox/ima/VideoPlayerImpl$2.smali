.class Lcom/roblox/ima/VideoPlayerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/ima/VideoPlayerImpl;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/ima/VideoPlayerImpl;


# direct methods
.method constructor <init>(Lcom/roblox/ima/VideoPlayerImpl;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/roblox/ima/VideoPlayerImpl$2;->a:Lcom/roblox/ima/VideoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/roblox/ima/VideoPlayerImpl$2;->a:Lcom/roblox/ima/VideoPlayerImpl;

    sget-object v1, Lcom/roblox/ima/VideoPlayerImpl$a;->a:Lcom/roblox/ima/VideoPlayerImpl$a;

    invoke-static {v0, v1}, Lcom/roblox/ima/VideoPlayerImpl;->a(Lcom/roblox/ima/VideoPlayerImpl;Lcom/roblox/ima/VideoPlayerImpl$a;)Lcom/roblox/ima/VideoPlayerImpl$a;

    .line 68
    iget-object v0, p0, Lcom/roblox/ima/VideoPlayerImpl$2;->a:Lcom/roblox/ima/VideoPlayerImpl;

    invoke-static {v0}, Lcom/roblox/ima/VideoPlayerImpl;->a(Lcom/roblox/ima/VideoPlayerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/ima/b$a;

    .line 69
    invoke-interface {v0}, Lcom/roblox/ima/b$a;->d()V

    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
