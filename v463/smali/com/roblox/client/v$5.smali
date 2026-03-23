.class Lcom/roblox/client/v$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/v;


# direct methods
.method constructor <init>(Lcom/roblox/client/v;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/roblox/client/v$5;->a:Lcom/roblox/client/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/roblox/client/v$5;->a:Lcom/roblox/client/v;

    invoke-static {v0}, Lcom/roblox/client/v;->h(Lcom/roblox/client/v;)V

    return-void
.end method

.method public a(Lcom/roblox/client/purchase/f;)V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/roblox/client/v$5;->a:Lcom/roblox/client/v;

    invoke-static {v0}, Lcom/roblox/client/v;->i(Lcom/roblox/client/v;)V

    .line 860
    iget-object v0, p0, Lcom/roblox/client/v$5;->a:Lcom/roblox/client/v;

    invoke-static {v0, p1}, Lcom/roblox/client/v;->a(Lcom/roblox/client/v;Lcom/roblox/client/purchase/f;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
