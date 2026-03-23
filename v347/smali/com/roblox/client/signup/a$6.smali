.class Lcom/roblox/client/signup/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 376
    iput-object p1, p0, Lcom/roblox/client/signup/a$6;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/roblox/client/signup/a$6;->a:Lcom/roblox/client/signup/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Z)Z

    .line 379
    const-string v0, "signup"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/roblox/client/signup/a$6;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->h:Lcom/roblox/client/signup/a$b;

    invoke-interface {v0}, Lcom/roblox/client/signup/a$b;->m()V

    .line 382
    return-void
.end method
