.class Lcom/roblox/client/chat/f$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/chat/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/chat/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/f;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/roblox/client/chat/f$15;->a:Lcom/roblox/client/chat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 273
    if-eqz p2, :cond_0

    .line 274
    iget-object v0, p0, Lcom/roblox/client/chat/f$15;->a:Lcom/roblox/client/chat/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/chat/f;->b(Lcom/roblox/client/chat/f;Z)V

    .line 276
    :cond_0
    return-void
.end method
