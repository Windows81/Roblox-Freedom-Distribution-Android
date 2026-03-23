.class Lcom/roblox/client/phonenumber/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/phonenumber/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/phonenumber/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/phonenumber/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/phonenumber/a;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/roblox/client/phonenumber/a$2;->a:Lcom/roblox/client/phonenumber/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/phonenumber/PhonePrefix;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/roblox/client/phonenumber/a$2;->a:Lcom/roblox/client/phonenumber/a;

    invoke-static {v0}, Lcom/roblox/client/phonenumber/a;->a(Lcom/roblox/client/phonenumber/a;)Lcom/roblox/client/phonenumber/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/phonenumber/a$a;->a(Lcom/roblox/client/phonenumber/PhonePrefix;)V

    return-void
.end method
