.class Lcom/roblox/client/r/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/r/b;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/r/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/r/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/roblox/client/r/b$2;->c:Lcom/roblox/client/r/b;

    iput-object p2, p0, Lcom/roblox/client/r/b$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/r/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/roblox/client/r/b$2;->c:Lcom/roblox/client/r/b;

    invoke-static {v0}, Lcom/roblox/client/r/b;->a(Lcom/roblox/client/r/b;)Lcom/roblox/client/r/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/r/b$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/r/b$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/r/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
