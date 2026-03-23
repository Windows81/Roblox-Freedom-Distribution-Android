.class Lcom/roblox/client/signup/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/RbxGenderPicker$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/roblox/client/signup/a$3;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/components/RbxButton;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/roblox/client/signup/a$3;->a:Lcom/roblox/client/signup/a;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/a;->a(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/roblox/client/signup/a$3;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/a$3;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->c(Lcom/roblox/client/signup/a;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 342
    return-void
.end method
