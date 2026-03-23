.class Lcom/roblox/client/chat/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/chat/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/roblox/client/chat/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/e;J)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/roblox/client/chat/e$5;->b:Lcom/roblox/client/chat/e;

    iput-wide p2, p0, Lcom/roblox/client/chat/e$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 177
    invoke-static {}, Lcom/roblox/client/realtime/RealtimeService;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/roblox/client/chat/e$5;->b:Lcom/roblox/client/chat/e;

    invoke-virtual {v0}, Lcom/roblox/client/chat/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0166

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/e$5;->b:Lcom/roblox/client/chat/e;

    invoke-static {v0}, Lcom/roblox/client/chat/e;->h(Lcom/roblox/client/chat/e;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/roblox/client/chat/e$5;->b:Lcom/roblox/client/chat/e;

    iget-wide v2, p0, Lcom/roblox/client/chat/e$5;->a:J

    invoke-static {v0, v2, v3}, Lcom/roblox/client/chat/e;->a(Lcom/roblox/client/chat/e;J)V

    goto :goto_0
.end method
