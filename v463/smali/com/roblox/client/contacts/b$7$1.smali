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

    .line 647
    iput-object p1, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$7;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 652
    iget-object v0, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$7;->c:Lcom/roblox/client/contacts/d;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v1, v1, Lcom/roblox/client/contacts/b$7;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v1}, Lcom/roblox/client/contacts/b;->h(Lcom/roblox/client/contacts/b;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/contacts/b$7$1;->a:Lcom/roblox/client/contacts/b$7;

    iget-object v2, v2, Lcom/roblox/client/contacts/b$7;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v2}, Lcom/roblox/client/contacts/b;->g(Lcom/roblox/client/contacts/b;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/d;->a(Ljava/util/List;)V

    return-void
.end method
