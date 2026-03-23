.class abstract Lcom/roblox/client/contacts/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/contacts/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field q:Lde/hdodenhof/circleimageview/CircleImageView;

.field r:Lcom/roblox/client/components/RbxTextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/roblox/client/contacts/c$a;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Lcom/c/a/t;->a(Ljava/lang/String;)Lcom/c/a/x;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$e;->empty_contact_icon:I

    .line 154
    invoke-virtual {p1, v0}, Lcom/c/a/x;->a(I)Lcom/c/a/x;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/contacts/c$a;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 155
    invoke-virtual {p1, v0}, Lcom/c/a/x;->a(Landroid/widget/ImageView;)V

    return-void
.end method
