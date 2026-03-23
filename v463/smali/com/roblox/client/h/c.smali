.class public abstract Lcom/roblox/client/h/c;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final c:Lcom/roblox/client/components/RbxTextView;

.field public final d:Lcom/roblox/client/components/RbxTextView;

.field protected e:Lcom/roblox/client/phonenumber/PhonePrefix;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/roblox/client/components/RbxTextView;Lcom/roblox/client/components/RbxTextView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 31
    iput-object p4, p0, Lcom/roblox/client/h/c;->c:Lcom/roblox/client/components/RbxTextView;

    .line 32
    iput-object p5, p0, Lcom/roblox/client/h/c;->d:Lcom/roblox/client/components/RbxTextView;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/roblox/client/phonenumber/PhonePrefix;)V
.end method

.method public h()Lcom/roblox/client/phonenumber/PhonePrefix;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/roblox/client/h/c;->e:Lcom/roblox/client/phonenumber/PhonePrefix;

    return-object v0
.end method
