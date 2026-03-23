.class Lcom/roblox/client/signup/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/i;


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
    .line 223
    iput-object p1, p0, Lcom/roblox/client/signup/b$10;->a:Lcom/roblox/client/signup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/roblox/client/signup/b$10;->a:Lcom/roblox/client/signup/b;

    invoke-static {v0}, Lcom/roblox/client/signup/b;->c(Lcom/roblox/client/signup/b;)Lcom/roblox/client/signup/f$b;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, p2, v1}, Lcom/roblox/client/signup/f$b;->a(ZLjava/lang/String;)V

    .line 227
    return-void
.end method
