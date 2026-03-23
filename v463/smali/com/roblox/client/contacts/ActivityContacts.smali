.class public Lcom/roblox/client/contacts/ActivityContacts;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/a$a;
.implements Lcom/roblox/client/contacts/h$a;


# instance fields
.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    const-string v0, "contactFriendFinderGoToSettingsClicked"

    const/4 v1, 0x0

    .line 359
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private B()V
    .locals 4

    .line 365
    iget v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->s:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "Under13OrAndroidUnder6"

    goto :goto_0

    :pswitch_1
    const-string v0, "EmptyContacts"

    goto :goto_0

    :pswitch_2
    const-string v0, "BackNoSettingsAccess"

    goto :goto_0

    :pswitch_3
    const-string v0, "Error"

    goto :goto_0

    :pswitch_4
    const-string v0, "BackWithContacts"

    goto :goto_0

    :pswitch_5
    const-string v0, "BackWhileLoading"

    .line 386
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leaving with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/roblox/client/contacts/ActivityContacts;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rbx.contacts"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v2, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v3, "action"

    invoke-direct {v2, v3, v0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "contactFriendFinderUserLeavingEvent"

    .line 391
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/contacts/ActivityContacts;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->t()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/ActivityContacts;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/ActivityContacts;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "action"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "contactFriendFinderTermsRequested"

    .line 398
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v2, "granted"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "contactsAccessRequested"

    .line 355
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/contacts/ActivityContacts;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->s()V

    return-void
.end method

.method private s()V
    .locals 4

    .line 239
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->A()V

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private t()V
    .locals 2

    const-string v0, "android.permission.READ_CONTACTS"

    .line 255
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "rbx.contacts"

    if-eqz v0, :cond_0

    const-string v0, "Should show extra rationale."

    .line 257
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->u()V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Already asked for the permission but no rationale needed. This means the user checked: \'Do not show again\'"

    .line 273
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->v()V

    goto :goto_0

    :cond_1
    const-string v0, "Requesting the permission for the first time."

    .line 277
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->u()V

    :goto_0
    return-void
.end method

.method private u()V
    .locals 2

    const-string v0, "android.permission.READ_CONTACTS"

    .line 287
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 289
    invoke-static {p0, v0, v1}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 290
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->q()V

    return-void
.end method

.method private v()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->r:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private x()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->r:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private y()V
    .locals 4

    .line 328
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->x()V

    .line 330
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "FragmentContacts"

    .line 331
    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->x()Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v0

    .line 334
    sget v2, Lcom/roblox/client/o$a;->slide_up_short:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/k;->a(II)Landroidx/fragment/app/k;

    .line 335
    invoke-static {}, Lcom/roblox/client/contacts/h;->aq()Lcom/roblox/client/contacts/h;

    move-result-object v2

    .line 336
    sget v3, Lcom/roblox/client/o$f;->contacts_content_layout:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    .line 337
    invoke-virtual {v0}, Landroidx/fragment/app/k;->c()I

    :cond_1
    return-void
.end method

.method private z()V
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "FragmentContacts"

    .line 343
    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v0

    .line 346
    invoke-virtual {v0, v1}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    .line 347
    invoke-virtual {v0}, Landroidx/fragment/app/k;->c()I

    :cond_0
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/roblox/client/contacts/ActivityContacts;->s:I

    return-void
.end method

.method public n()V
    .locals 3

    const-string v0, "android.permission.READ_CONTACTS"

    .line 216
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "rbx.contacts"

    if-nez v1, :cond_0

    const-string v0, "Contact permissions have already been granted. Displaying contact details."

    .line 218
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->y()V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Contact permissions have already been denied once and the userselected \'Don\'t ask me again\'."

    .line 224
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->v()V

    goto :goto_0

    :cond_1
    const-string v0, "Contact permissions have NOT been granted."

    .line 228
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->w()V

    .line 231
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->z()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 73
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x4

    .line 76
    iput p1, p0, Lcom/roblox/client/contacts/ActivityContacts;->s:I

    .line 78
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    :cond_0
    const-string v0, "rbx.contacts"

    const-string v2, "This feature is only for users over 13 years old and Android >= 6"

    .line 79
    invoke-static {v0, v2}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 81
    iput v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->s:I

    .line 83
    sget v0, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_Over13Feature:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->finish()V

    .line 90
    :cond_1
    sget v0, Lcom/roblox/client/o$g;->activity_contacts:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->setContentView(I)V

    .line 93
    sget v0, Lcom/roblox/client/o$f;->contacts_toolbar_include:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->a(Landroidx/appcompat/widget/Toolbar;)V

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->a()Landroidx/appcompat/app/a;

    move-result-object v2

    .line 99
    sget v3, Lcom/roblox/client/o$j;->Features_FriendFinder_Action_Add_Contacts:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/a;->a(I)V

    .line 100
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/a;->b(Z)V

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/a;->a(Z)V

    .line 103
    invoke-static {v0, p0}, Lcom/roblox/client/components/k;->a(Landroidx/appcompat/widget/Toolbar;Landroid/content/Context;)V

    .line 105
    sget v0, Lcom/roblox/client/o$f;->permissions_needed_linear_layout:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/roblox/client/o$f;->contacts_needed_continue_button:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/contacts/ActivityContacts$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/contacts/ActivityContacts$1;-><init>(Lcom/roblox/client/contacts/ActivityContacts;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v0, Lcom/roblox/client/o$f;->app_settings_linear_layout:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->r:Landroid/widget/LinearLayout;

    .line 116
    sget v0, Lcom/roblox/client/o$f;->app_settings_needed_button:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/contacts/ActivityContacts$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/contacts/ActivityContacts$2;-><init>(Lcom/roblox/client/contacts/ActivityContacts;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/roblox/client/o$f;->contacts_fine_print_tv:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    .line 124
    sget v2, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_PermissionsFinePrintLink:I

    invoke-virtual {p0, v2}, Lcom/roblox/client/contacts/ActivityContacts;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    sget v2, Lcom/roblox/client/o$j;->Features_FriendFinder_Response_ContactPermissionNeeded:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v7, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/roblox/client/contacts/ActivityContacts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 128
    new-instance v10, Lcom/roblox/client/ae/a/d;

    invoke-static {}, Lcom/roblox/client/b;->aK()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int v9, v8, v4

    move-object v4, v10

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/roblox/client/ae/a/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    new-array v1, v1, [Lcom/roblox/client/ae/a/a;

    aput-object v10, v1, v3

    .line 130
    invoke-static {v0, v2, v1}, Lcom/roblox/client/ae/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)V

    .line 134
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v1, 0xc8

    .line 136
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 p1, 0x3

    const-wide/16 v1, 0x32

    .line 137
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 139
    sget p1, Lcom/roblox/client/o$f;->permissions_request_layout:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 160
    invoke-super {p0}, Lcom/roblox/client/q;->onDestroy()V

    .line 162
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->B()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 172
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "rbx.contacts"

    const-string p2, "Received response for contact permissions request."

    .line 192
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p3}, Lcom/roblox/client/ae/m;->a([I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Read Contacts permission granted. Fetching contacts."

    .line 195
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->a(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "Contacts permissions were NOT granted."

    .line 199
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/ActivityContacts;->a(Z)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/q;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 152
    invoke-super {p0}, Lcom/roblox/client/q;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->n()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/roblox/client/q;->onStart()V

    const-string v0, "contactsPermission"

    .line 147
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method p()Z
    .locals 3

    .line 299
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PermissionAlreadyAsked"

    const/4 v2, 0x0

    .line 300
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method q()V
    .locals 3

    .line 308
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PermissionAlreadyAsked"

    const/4 v2, 0x1

    .line 309
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public r()V
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->finish()V

    return-void
.end method
