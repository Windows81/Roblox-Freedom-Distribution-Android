.class Lcom/roblox/client/datastructures/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/datastructures/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/datastructures/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/datastructures/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/datastructures/b;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/roblox/client/datastructures/b$1;->a:Lcom/roblox/client/datastructures/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/roblox/client/datastructures/b$1;->a:Lcom/roblox/client/datastructures/b;

    sget-object v1, Lcom/roblox/client/datastructures/b$a;->a:Lcom/roblox/client/datastructures/b$a;

    invoke-static {v0, v1}, Lcom/roblox/client/datastructures/b;->a(Lcom/roblox/client/datastructures/b;Lcom/roblox/client/datastructures/b$a;)Lcom/roblox/client/datastructures/b$a;

    .line 69
    iget-object v0, p0, Lcom/roblox/client/datastructures/b$1;->a:Lcom/roblox/client/datastructures/b;

    invoke-virtual {v0}, Lcom/roblox/client/datastructures/b;->a()V

    return-void
.end method
