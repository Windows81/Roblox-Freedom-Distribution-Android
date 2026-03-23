.class public Lcom/roblox/client/contacts/h;
.super Lcom/roblox/client/u/g;
.source "SourceFile"

# interfaces
.implements Landroidx/f/a/a$a;
.implements Lcom/roblox/client/contacts/c$d;
.implements Lcom/roblox/client/contacts/i$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/contacts/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/u/g;",
        "Landroidx/f/a/a$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/roblox/client/contacts/c$d;",
        "Lcom/roblox/client/contacts/i$c;"
    }
.end annotation


# instance fields
.field private aA:Lcom/roblox/client/contacts/i$b;

.field private aB:Lcom/roblox/client/u/a$a;

.field private as:Lcom/roblox/client/contacts/h$a;

.field private at:Landroidx/recyclerview/widget/RecyclerView;

.field private av:Landroid/widget/RelativeLayout;

.field private aw:Landroid/widget/RelativeLayout;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/widget/LinearLayout;

.field private az:Lcom/roblox/client/contacts/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/roblox/client/u/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/h;)Lcom/roblox/client/contacts/h$a;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roblox/client/contacts/h;->as:Lcom/roblox/client/contacts/h$a;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/h;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(ZI)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->ax:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->ay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->ay:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->ay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->av:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static aq()Lcom/roblox/client/contacts/h;
    .locals 1

    .line 81
    new-instance v0, Lcom/roblox/client/contacts/h;

    invoke-direct {v0}, Lcom/roblox/client/contacts/h;-><init>()V

    return-object v0
.end method

.method private au()Z
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->r()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private av()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->aw:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private aw()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->aw:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->ay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private c(Lcom/roblox/client/contacts/model/d;)V
    .locals 5

    .line 199
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->g()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->r()Landroidx/fragment/app/c;

    move-result-object p1

    sget v1, Lcom/roblox/client/o$j;->Feature_ContactUpsell_PhoneNumber_Missing:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/contacts/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-static {}, Lcom/roblox/client/b;->ay()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 207
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 205
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {}, Lcom/roblox/client/b;->az()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "sms_body"

    .line 214
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->r()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/roblox/client/ae/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p0, v1}, Lcom/roblox/client/contacts/h;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 226
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 227
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 228
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->r()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/ae/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p0, p1}, Lcom/roblox/client/contacts/h;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    :cond_2
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_NoSharingAppInstalled:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/contacts/h;->d(I)V

    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->az:Lcom/roblox/client/contacts/c;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/roblox/client/contacts/c;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public F()V
    .locals 3

    .line 146
    invoke-super {p0}, Lcom/roblox/client/u/g;->F()V

    const-string v0, "rbx.contacts"

    const-string v1, "onResume."

    .line 148
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->az:Lcom/roblox/client/contacts/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/contacts/c;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->av()V

    .line 153
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->as:Lcom/roblox/client/contacts/h$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/h$a;->d(I)V

    .line 156
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->D()Landroidx/f/a/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/f/a/a;->b(ILandroid/os/Bundle;Landroidx/f/a/a$a;)Landroidx/f/b/c;

    :cond_1
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 104
    sget p3, Lcom/roblox/client/o$g;->fragment_contacts:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    sget p2, Lcom/roblox/client/o$f;->contacts_contacts_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/roblox/client/contacts/h;->ay:Landroid/widget/LinearLayout;

    .line 107
    sget p2, Lcom/roblox/client/o$f;->contacts_error_screen:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/roblox/client/contacts/h;->av:Landroid/widget/RelativeLayout;

    .line 108
    sget p2, Lcom/roblox/client/o$f;->contacts_loading_screen:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/roblox/client/contacts/h;->aw:Landroid/widget/RelativeLayout;

    .line 109
    sget p2, Lcom/roblox/client/o$f;->contacts_error_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/roblox/client/contacts/h;->ax:Landroid/widget/TextView;

    .line 111
    sget p2, Lcom/roblox/client/o$f;->contacts_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/roblox/client/contacts/h;->at:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    .line 112
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    sget p2, Lcom/roblox/client/o$f;->contacts_error_ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/roblox/client/contacts/h$1;

    invoke-direct {p3, p0}, Lcom/roblox/client/contacts/h$1;-><init>(Lcom/roblox/client/contacts/h;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget p2, Lcom/roblox/client/o$f;->contacts_search_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxSearchView;

    .line 122
    new-instance p3, Lcom/roblox/client/contacts/h$2;

    invoke-direct {p3, p0, p2}, Lcom/roblox/client/contacts/h$2;-><init>(Lcom/roblox/client/contacts/h;Lcom/roblox/client/components/RbxSearchView;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxSearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 138
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->p()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 139
    iget-object p3, p0, Lcom/roblox/client/contacts/h;->at:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-object p1
.end method

.method public a(ILandroid/os/Bundle;)Landroidx/f/b/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/f/b/c<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string p1, "rbx.contacts"

    const-string p2, "Creating the loader."

    .line 270
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance p1, Landroidx/f/b/b;

    .line 274
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->r()Landroidx/fragment/app/c;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/contacts/a;->a:Landroid/net/Uri;

    sget-object v3, Lcom/roblox/client/contacts/a;->b:[Ljava/lang/String;

    sget-object v5, Lcom/roblox/client/contacts/a;->c:[Ljava/lang/String;

    const-string v4, "mimetype IN (?, ?, ?, ?) AND in_visible_group = ? AND display_name <> ? AND has_phone_number = ?"

    const-string v6, "display_name ASC"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/f/b/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Lcom/roblox/client/u/g;->a(Landroid/content/Context;)V

    .line 163
    instance-of v0, p1, Lcom/roblox/client/contacts/h$a;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Lcom/roblox/client/contacts/h$a;

    iput-object p1, p0, Lcom/roblox/client/contacts/h;->as:Lcom/roblox/client/contacts/h$a;

    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroidx/f/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/f/b/c<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const-string p1, "rbx.contacts"

    const-string v0, "Loader reset."

    .line 297
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroidx/f/b/c;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/f/b/c<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->az:Lcom/roblox/client/contacts/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/roblox/client/contacts/c;->a()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "rbx.contacts"

    const-string v0, "Contacts loaded."

    .line 290
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->aA:Lcom/roblox/client/contacts/i$b;

    invoke-interface {p1, p2}, Lcom/roblox/client/contacts/i$b;->a(Landroid/database/Cursor;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Landroidx/f/b/c;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/contacts/h;->a(Landroidx/f/b/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Lcom/roblox/client/contacts/i$b;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/roblox/client/contacts/h;->aA:Lcom/roblox/client/contacts/i$b;

    return-void
.end method

.method public a(Lcom/roblox/client/contacts/model/d;)V
    .locals 2

    .line 375
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "rbx.contacts"

    const-string v1, "Sending friend invite."

    .line 379
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->aA:Lcom/roblox/client/contacts/i$b;

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/i$b;->a(Lcom/roblox/client/contacts/model/d;)V

    return-void
.end method

.method public a(Lcom/roblox/client/u/a$a;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/roblox/client/contacts/h;->aB:Lcom/roblox/client/u/a$a;

    return-void
.end method

.method public a(Lcom/roblox/client/u/e;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/roblox/client/contacts/h;->au:Lcom/roblox/client/u/e;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/roblox/client/contacts/i$b;

    invoke-virtual {p0, p1}, Lcom/roblox/client/contacts/h;->a(Lcom/roblox/client/contacts/i$b;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Roblox contacts merged. Total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.contacts"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/roblox/client/contacts/c;

    invoke-direct {v0, p1, p0}, Lcom/roblox/client/contacts/c;-><init>(Ljava/util/ArrayList;Lcom/roblox/client/contacts/c$d;)V

    iput-object v0, p0, Lcom/roblox/client/contacts/h;->az:Lcom/roblox/client/contacts/c;

    .line 342
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->at:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 343
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->az:Lcom/roblox/client/contacts/c;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/c;->c()V

    .line 345
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->aw()V

    .line 347
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->as:Lcom/roblox/client/contacts/h$a;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/roblox/client/contacts/h$a;->d(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->az:Lcom/roblox/client/contacts/c;

    invoke-virtual {v0, p1}, Lcom/roblox/client/contacts/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public ar()V
    .locals 2

    .line 303
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "rbx.contacts"

    const-string v1, "Unique contacts generated."

    .line 307
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->av()V

    return-void
.end method

.method public as()V
    .locals 2

    .line 313
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "rbx.contacts"

    const-string v1, "Roblox contacts fetched."

    .line 317
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->av()V

    return-void
.end method

.method public at()V
    .locals 2

    .line 323
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->aw()V

    const/4 v0, 0x1

    .line 329
    sget v1, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_EmptyContactsBook:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/contacts/h;->a(ZI)V

    .line 331
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->as:Lcom/roblox/client/contacts/h$a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/h$a;->d(I)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    .line 90
    invoke-super {p0, p1}, Lcom/roblox/client/u/g;->b(Landroid/os/Bundle;)V

    .line 92
    new-instance p1, Lcom/roblox/client/contacts/g;

    new-instance v0, Lcom/roblox/client/contacts/e;

    .line 94
    invoke-virtual {p0}, Lcom/roblox/client/contacts/h;->r()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/contacts/b;

    new-instance v3, Lcom/roblox/client/http/h;

    invoke-direct {v3}, Lcom/roblox/client/http/h;-><init>()V

    new-instance v4, Lcom/roblox/client/ae/v$b;

    invoke-direct {v4}, Lcom/roblox/client/ae/v$b;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/roblox/client/contacts/b;-><init>(Lcom/roblox/client/http/f;Lcom/roblox/client/ae/v$a;)V

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/contacts/e;-><init>(Lcom/roblox/client/ae/s;Lcom/roblox/client/contacts/b;)V

    invoke-direct {p1, p0, v0}, Lcom/roblox/client/contacts/g;-><init>(Lcom/roblox/client/contacts/i$c;Lcom/roblox/client/contacts/i$a;)V

    iput-object p1, p0, Lcom/roblox/client/contacts/h;->aA:Lcom/roblox/client/contacts/i$b;

    return-void
.end method

.method public b(Lcom/roblox/client/contacts/model/d;)V
    .locals 2

    .line 385
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/h;->aA:Lcom/roblox/client/contacts/i$b;

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/i$b;->b(Lcom/roblox/client/contacts/model/d;)V

    const-string v0, "rbx.contacts"

    const-string v1, "Sending app invite."

    .line 391
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/h;->c(Lcom/roblox/client/contacts/model/d;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 361
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->au()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/contacts/h;->aw()V

    const/4 p1, 0x1

    .line 367
    sget v0, Lcom/roblox/client/o$j;->Features_FriendFinder_Response_NetworkError:I

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/contacts/h;->a(ZI)V

    .line 369
    iget-object p1, p0, Lcom/roblox/client/contacts/h;->as:Lcom/roblox/client/contacts/h$a;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/roblox/client/contacts/h$a;->d(I)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/roblox/client/u/g;->f()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/roblox/client/contacts/h;->as:Lcom/roblox/client/contacts/h$a;

    return-void
.end method
