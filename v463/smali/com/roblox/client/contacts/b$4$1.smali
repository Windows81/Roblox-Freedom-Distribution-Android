.class Lcom/roblox/client/contacts/b$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/b$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/b$4;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/b$4;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/roblox/client/contacts/b$4$1;->a:Lcom/roblox/client/contacts/b$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/roblox/client/contacts/b$4$1;->a:Lcom/roblox/client/contacts/b$4;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$4;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 427
    iget-object v0, p0, Lcom/roblox/client/contacts/b$4$1;->a:Lcom/roblox/client/contacts/b$4;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$4;->c:Lcom/roblox/client/contacts/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/d;->b(I)V

    return-void
.end method
