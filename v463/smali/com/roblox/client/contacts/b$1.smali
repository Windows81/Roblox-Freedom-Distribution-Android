.class Lcom/roblox/client/contacts/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/b;->a(Landroid/database/Cursor;Lcom/roblox/client/contacts/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Landroid/os/HandlerThread;

.field final synthetic c:Lcom/roblox/client/contacts/d;

.field final synthetic d:Lcom/roblox/client/contacts/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/b;Landroid/database/Cursor;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    iput-object p2, p0, Lcom/roblox/client/contacts/b$1;->a:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/roblox/client/contacts/b$1;->b:Landroid/os/HandlerThread;

    iput-object p4, p0, Lcom/roblox/client/contacts/b$1;->c:Lcom/roblox/client/contacts/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$1;->a:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;Landroid/database/Cursor;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;Ljava/util/TreeMap;)Ljava/util/TreeMap;

    .line 146
    iget-object v0, p0, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v0}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v1}, Lcom/roblox/client/contacts/b;->b(Lcom/roblox/client/contacts/b;)Ljava/util/ArrayList;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v2}, Lcom/roblox/client/contacts/b;->e(Lcom/roblox/client/contacts/b;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/contacts/b$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/roblox/client/contacts/b$1$1;-><init>(Lcom/roblox/client/contacts/b$1;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
