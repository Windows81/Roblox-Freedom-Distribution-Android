.class Lcom/roblox/ima/VideoPlayerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 43
    iput-object p1, p0, Lcom/roblox/ima/VideoPlayerImpl$1;->a:Lcom/roblox/ima/VideoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/ima/VideoPlayerImpl$1;->a:Lcom/roblox/ima/VideoPlayerImpl;

    invoke-virtual {v0}, Lcom/roblox/ima/VideoPlayerImpl;->b()V

    .line 51
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 52
    iget-object v0, p0, Lcom/roblox/ima/VideoPlayerImpl$1;->a:Lcom/roblox/ima/VideoPlayerImpl;

    invoke-virtual {v0}, Lcom/roblox/ima/VideoPlayerImpl;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 53
    iget-object v0, p0, Lcom/roblox/ima/VideoPlayerImpl$1;->a:Lcom/roblox/ima/VideoPlayerImpl;

    invoke-virtual {v0}, Lcom/roblox/ima/VideoPlayerImpl;->c()V

    .line 54
    iget-object v0, p0, Lcom/roblox/ima/VideoPlayerImpl$1;->a:Lcom/roblox/ima/VideoPlayerImpl;

    sget-object v1, Lcom/roblox/ima/VideoPlayerImpl$a;->a:Lcom/roblox/ima/VideoPlayerImpl$a;

    invoke-static {v0, v1}, Lcom/roblox/ima/VideoPlayerImpl;->a(Lcom/roblox/ima/VideoPlayerImpl;Lcom/roblox/ima/VideoPlayerImpl$a;)Lcom/roblox/ima/VideoPlayerImpl$a;

    .line 56
    iget-object v0, p0, Lcom/roblox/ima/VideoPlayerImpl$1;->a:Lcom/roblox/ima/VideoPlayerImpl;

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

    .line 57
    invoke-interface {v0}, Lcom/roblox/ima/b$a;->e()V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
