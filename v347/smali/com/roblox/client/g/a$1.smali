.class Lcom/roblox/client/g/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/o/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/g/a;->a(Lcom/roblox/client/datastructures/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/datastructures/a;

.field final synthetic b:Lcom/roblox/client/g/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/g/a;Lcom/roblox/client/datastructures/a;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/roblox/client/g/a$1;->b:Lcom/roblox/client/g/a;

    iput-object p2, p0, Lcom/roblox/client/g/a$1;->a:Lcom/roblox/client/datastructures/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/o/d;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/roblox/client/g/a$1;->a:Lcom/roblox/client/datastructures/a;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/roblox/client/g/a$1;->a:Lcom/roblox/client/datastructures/a;

    invoke-interface {v0}, Lcom/roblox/client/datastructures/a;->a()V

    .line 106
    :cond_0
    return-void
.end method
