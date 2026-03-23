.class Lcom/roblox/client/contacts/b$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/b$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/b$7;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/b$7;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$7;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 581
    iget-object v0, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$7;->d:Lcom/roblox/client/contacts/b;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v1, v1, Lcom/roblox/client/contacts/b$7;->c:Lcom/roblox/client/contacts/d;

    invoke-static {v0, v1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V

    .line 583
    iget-object v0, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$7;->c:Lcom/roblox/client/contacts/d;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v1, v1, Lcom/roblox/client/contacts/b$7;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v1}, Lcom/roblox/client/contacts/b;->h(Lcom/roblox/client/contacts/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/d;->a(Ljava/util/ArrayList;)V

    .line 584
    return-void
.end method
