.class Lcom/roblox/client/provider/a/c$1;
.super Lcom/roblox/client/provider/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/provider/a/c;->a(Landroid/net/Uri;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/provider/a/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/provider/a/c;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/roblox/client/provider/a/c$1;->b:Lcom/roblox/client/provider/a/c;

    iput-object p2, p0, Lcom/roblox/client/provider/a/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/roblox/client/provider/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    const-string v0, "dev_rpc_ip_port_override"

    .line 38
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/roblox/client/provider/a/c$1;->a:Ljava/lang/String;

    return-object p1
.end method
