.class Lcom/roblox/client/chat/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/chat/m;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/chat/m;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/m;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/roblox/client/chat/m$1;->a:Lcom/roblox/client/chat/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/roblox/client/chat/m$1;->a:Lcom/roblox/client/chat/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/m;->d()Z

    .line 78
    return-void
.end method
