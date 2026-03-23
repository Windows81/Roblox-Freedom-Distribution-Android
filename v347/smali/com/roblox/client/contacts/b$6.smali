.class Lcom/roblox/client/contacts/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/b;->a(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/HandlerThread;

.field final synthetic c:Lcom/roblox/client/contacts/d;

.field final synthetic d:Lcom/roblox/client/contacts/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/b;Ljava/lang/String;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/roblox/client/contacts/b$6;->d:Lcom/roblox/client/contacts/b;

    iput-object p2, p0, Lcom/roblox/client/contacts/b$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/contacts/b$6;->b:Landroid/os/HandlerThread;

    iput-object p4, p0, Lcom/roblox/client/contacts/b$6;->c:Lcom/roblox/client/contacts/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/roblox/client/contacts/b$6;->d:Lcom/roblox/client/contacts/b;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 443
    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/roblox/client/contacts/b$6;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v0}, Lcom/roblox/client/contacts/b;->e(Lcom/roblox/client/contacts/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/contacts/b$6$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/contacts/b$6$1;-><init>(Lcom/roblox/client/contacts/b$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/contacts/b$6;->d:Lcom/roblox/client/contacts/b;

    iget-object v2, p0, Lcom/roblox/client/contacts/b$6;->c:Lcom/roblox/client/contacts/d;

    iget-object v3, p0, Lcom/roblox/client/contacts/b$6;->b:Landroid/os/HandlerThread;

    invoke-static {v1, v0, v2, v3}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;Lorg/json/JSONArray;Lcom/roblox/client/contacts/d;Landroid/os/HandlerThread;)V

    goto :goto_0
.end method
