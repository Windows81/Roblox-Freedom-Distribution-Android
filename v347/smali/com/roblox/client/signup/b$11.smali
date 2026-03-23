.class Lcom/roblox/client/signup/b$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 229
    iput-object p1, p0, Lcom/roblox/client/signup/b$11;->a:Lcom/roblox/client/signup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/roblox/client/signup/b$11;->a:Lcom/roblox/client/signup/b;

    invoke-static {v0}, Lcom/roblox/client/signup/b;->c(Lcom/roblox/client/signup/b;)Lcom/roblox/client/signup/f$b;

    move-result-object v0

    const-string v1, "passwordVerify"

    invoke-interface {v0, p2, v1}, Lcom/roblox/client/signup/f$b;->a(ZLjava/lang/String;)V

    .line 233
    return-void
.end method
