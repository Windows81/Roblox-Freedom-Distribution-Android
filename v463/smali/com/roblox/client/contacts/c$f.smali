.class Lcom/roblox/client/contacts/c$f;
.super Lcom/roblox/client/contacts/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/contacts/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field s:Lcom/roblox/client/components/RbxTextView;

.field t:Lcom/roblox/client/components/RbxTextView;

.field u:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 165
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$a;-><init>(Landroid/view/View;)V

    .line 167
    sget v0, Lcom/roblox/client/o$f;->contacts_roblox_list_thumbnail_img_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 168
    sget v0, Lcom/roblox/client/o$f;->contacts_roblox_list_name_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->r:Lcom/roblox/client/components/RbxTextView;

    .line 169
    sget v0, Lcom/roblox/client/o$f;->contacts_roblox_list_username_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->s:Lcom/roblox/client/components/RbxTextView;

    .line 170
    sget v0, Lcom/roblox/client/o$f;->contacts_roblox_list_mutual_friends_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/contacts/c$f;->t:Lcom/roblox/client/components/RbxTextView;

    .line 171
    sget v0, Lcom/roblox/client/o$f;->contacts_roblox_add_friend_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/roblox/client/contacts/c$f;->u:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/c$f;I)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$f;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 226
    iget-object p1, p0, Lcom/roblox/client/contacts/c$f;->u:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$j;->Features_FriendFinder_Action_Add:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 227
    iget-object p1, p0, Lcom/roblox/client/contacts/c$f;->u:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$e;->rbx_drawable_flat_button_blue:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/contacts/c$f;->u:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_Friends:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 217
    iget-object p1, p0, Lcom/roblox/client/contacts/c$f;->u:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$e;->rbx_drawable_flat_button_gray:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/contacts/c$f;->u:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_Pending:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 221
    iget-object p1, p0, Lcom/roblox/client/contacts/c$f;->u:Landroid/widget/Button;

    sget v0, Lcom/roblox/client/o$e;->rbx_drawable_flat_button_gray:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
    .locals 6

    .line 176
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    sget v1, Lcom/roblox/client/o$e;->empty_contact_icon:I

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/c$f;->a(Ljava/lang/String;)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->r:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/contacts/c$f;->c(I)V

    .line 186
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->s:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->t:Lcom/roblox/client/components/RbxTextView;

    .line 188
    invoke-virtual {v0}, Lcom/roblox/client/components/RbxTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_MutualFriends:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 189
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 188
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->u:Landroid/widget/Button;

    new-instance v1, Lcom/roblox/client/contacts/c$f$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/contacts/c$f$1;-><init>(Lcom/roblox/client/contacts/c$f;Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p1}, Lcom/c/a/t;->a(Ljava/lang/String;)Lcom/c/a/x;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$e;->empty_contact_icon:I

    .line 209
    invoke-virtual {p1, v0}, Lcom/c/a/x;->a(I)Lcom/c/a/x;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/contacts/c$f;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 210
    invoke-virtual {p1, v0}, Lcom/c/a/x;->a(Landroid/widget/ImageView;)V

    return-void
.end method
