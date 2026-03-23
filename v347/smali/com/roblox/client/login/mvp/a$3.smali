.class Lcom/roblox/client/login/mvp/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$3;->a:Lcom/roblox/client/login/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$3;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->b(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/login/mvp/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/a$a;->m()V

    .line 141
    return-void
.end method
