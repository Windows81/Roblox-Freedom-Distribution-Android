.class Lcom/roblox/client/components/RbxEditText$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/RbxEditText$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/RbxEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/RbxEditText;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/RbxEditText;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText$6;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$6;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-static {v0}, Lcom/roblox/client/components/RbxEditText;->d(Lcom/roblox/client/components/RbxEditText;)Lcom/roblox/client/components/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$6;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-static {v0}, Lcom/roblox/client/components/RbxEditText;->d(Lcom/roblox/client/components/RbxEditText;)Lcom/roblox/client/components/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/components/f;->a()V

    .line 459
    :cond_0
    return-void
.end method
