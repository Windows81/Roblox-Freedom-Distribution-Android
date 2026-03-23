.class Lcom/roblox/client/contacts/b$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/b$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/b$9;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/b$9;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/roblox/client/contacts/b$9$1;->a:Lcom/roblox/client/contacts/b$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 660
    iget-object v0, p0, Lcom/roblox/client/contacts/b$9$1;->a:Lcom/roblox/client/contacts/b$9;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$9;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 662
    iget-object v0, p0, Lcom/roblox/client/contacts/b$9$1;->a:Lcom/roblox/client/contacts/b$9;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$9;->c:Lcom/roblox/client/contacts/d;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$9$1;->a:Lcom/roblox/client/contacts/b$9;

    iget-object v1, v1, Lcom/roblox/client/contacts/b$9;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v1}, Lcom/roblox/client/contacts/b;->h(Lcom/roblox/client/contacts/b;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/roblox/client/contacts/b$9$1;->a:Lcom/roblox/client/contacts/b$9;

    iget-object v3, v3, Lcom/roblox/client/contacts/b$9;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v3}, Lcom/roblox/client/contacts/b;->g(Lcom/roblox/client/contacts/b;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/d;->a(Ljava/util/List;)V

    .line 663
    return-void
.end method
