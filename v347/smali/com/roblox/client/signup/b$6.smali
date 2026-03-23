.class Lcom/roblox/client/signup/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/b;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/roblox/client/signup/b$6;->a:Lcom/roblox/client/signup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/roblox/client/signup/b$6;->a:Lcom/roblox/client/signup/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/p;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/roblox/client/signup/b$6;->a:Lcom/roblox/client/signup/b;

    invoke-static {v0}, Lcom/roblox/client/signup/b;->a(Lcom/roblox/client/signup/b;)Lcom/roblox/client/l/a$a;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/f$c;->c:Lcom/roblox/client/signup/f$c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/l/a$a;->a(Lcom/roblox/client/l/h;Lcom/roblox/client/l/c;)V

    .line 194
    return-void
.end method
