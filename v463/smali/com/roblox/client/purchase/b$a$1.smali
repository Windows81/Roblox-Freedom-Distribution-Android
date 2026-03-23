.class Lcom/roblox/client/purchase/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/b$a;->a(Lcom/roblox/client/purchase/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/f;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Lcom/roblox/client/purchase/b$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/b$a;Lcom/roblox/client/purchase/f;Ljava/lang/CharSequence;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/roblox/client/purchase/b$a$1;->c:Lcom/roblox/client/purchase/b$a;

    iput-object p2, p0, Lcom/roblox/client/purchase/b$a$1;->a:Lcom/roblox/client/purchase/f;

    iput-object p3, p0, Lcom/roblox/client/purchase/b$a$1;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/roblox/client/purchase/b$a$1;->a:Lcom/roblox/client/purchase/f;

    invoke-virtual {v0}, Lcom/roblox/client/purchase/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/roblox/client/purchase/b$a$1;->c:Lcom/roblox/client/purchase/b$a;

    iget-object v0, v0, Lcom/roblox/client/purchase/b$a;->a:Lcom/roblox/client/purchase/b;

    iget-object v1, p0, Lcom/roblox/client/purchase/b$a$1;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/roblox/client/purchase/b;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/b$a$1;->c:Lcom/roblox/client/purchase/b$a;

    iget-object v0, v0, Lcom/roblox/client/purchase/b$a;->a:Lcom/roblox/client/purchase/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/b;->a(Lcom/roblox/client/purchase/b;)Lcom/roblox/client/purchase/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/purchase/b$a$1;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/r;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
