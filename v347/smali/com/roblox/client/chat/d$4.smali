.class Lcom/roblox/client/chat/d$4;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/chat/d;->b(Ljava/lang/String;)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/chat/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/roblox/client/chat/d$4;->b:Lcom/roblox/client/chat/d;

    iput-object p2, p0, Lcom/roblox/client/chat/d$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 550
    sget-object v0, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameLink > onClick() url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/chat/d$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/roblox/client/chat/d$4;->b:Lcom/roblox/client/chat/d;

    invoke-static {v0}, Lcom/roblox/client/chat/d;->d(Lcom/roblox/client/chat/d;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/chat/d$4;->b:Lcom/roblox/client/chat/d;

    invoke-static {v0}, Lcom/roblox/client/chat/d;->d(Lcom/roblox/client/chat/d;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 552
    :goto_0
    if-eqz v0, :cond_0

    .line 553
    iget-object v1, p0, Lcom/roblox/client/chat/d$4;->a:Ljava/lang/String;

    const v2, 0x7f0e00ef

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/ActivityNativeMain;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    return-void

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
