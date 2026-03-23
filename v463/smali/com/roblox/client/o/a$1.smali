.class Lcom/roblox/client/o/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/aa/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/o/a;->a(Lcom/roblox/client/datastructures/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/datastructures/a;

.field final synthetic b:Lcom/roblox/client/o/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/o/a;Lcom/roblox/client/datastructures/a;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/roblox/client/o/a$1;->b:Lcom/roblox/client/o/a;

    iput-object p2, p0, Lcom/roblox/client/o/a$1;->a:Lcom/roblox/client/datastructures/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/aa/d;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/roblox/client/o/a$1;->a:Lcom/roblox/client/datastructures/a;

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p1}, Lcom/roblox/client/datastructures/a;->a()V

    :cond_0
    return-void
.end method
