.class public Lcom/roblox/client/contacts/ActivityContacts;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/a$a;
.implements Lcom/roblox/client/contacts/h$a;


# instance fields
.field private m:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 323
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    return-void
.end method

.method private B()V
    .locals 4

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->A()V

    .line 330
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->e()Landroid/support/v4/app/l;

    move-result-object v0

    .line 331
    const-string v1, "FragmentContacts"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 332
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 334
    const v1, 0x7f010015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->a(II)Landroid/support/v4/app/p;

    .line 335
    invoke-static {}, Lcom/roblox/client/contacts/h;->a()Lcom/roblox/client/contacts/h;

    move-result-object v1

    .line 336
    const v2, 0x7f08005e

    const-string v3, "FragmentContacts"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 337
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 339
    :cond_1
    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->e()Landroid/support/v4/app/l;

    move-result-object v0

    .line 343
    const-string v1, "FragmentContacts"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    .line 346
    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    .line 347
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 349
    :cond_0
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 359
    const-string v0, "contactFriendFinderGoToSettingsClicked"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 360
    return-void
.end method

.method private E()V
    .locals 4

    .prologue
    .line 363
    const-string v0, "Unknown"

    .line 365
    iget v1, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:I

    packed-switch v1, :pswitch_data_0

    .line 386
    :goto_0
    const-string v1, "rbx.contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaving with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v2, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v3, "action"

    invoke-direct {v2, v3, v0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v0, "contactFriendFinderUserLeavingEvent"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 392
    return-void

    .line 367
    :pswitch_0
    const-string v0, "BackWhileLoading"

    goto :goto_0

    .line 370
    :pswitch_1
    const-string v0, "BackWithContacts"

    goto :goto_0

    .line 373
    :pswitch_2
    const-string v0, "Error"

    goto :goto_0

    .line 376
    :pswitch_3
    const-string v0, "BackNoSettingsAccess"

    goto :goto_0

    .line 379
    :pswitch_4
    const-string v0, "EmptyContacts"

    goto :goto_0

    .line 382
    :pswitch_5
    const-string v0, "Under13OrAndroidUnder6"

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/contacts/ActivityContacts;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->w()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/ActivityContacts;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/ActivityContacts;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "action"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    const-string v1, "contactFriendFinderTermsRequested"

    invoke-static {v1, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 399
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/contacts/ActivityContacts;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->v()V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .prologue
    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "granted"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v1, "contactsAccessRequested"

    invoke-static {v1, v0}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 356
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->D()V

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "package"

    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "rbx.contacts"

    const-string v1, "Should show extra rationale."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->x()V

    .line 281
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const-string v0, "rbx.contacts"

    const-string v1, "Already asked for the permission but no rationale needed. This means the user checked: \'Do not show again\'"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->y()V

    goto :goto_0

    .line 277
    :cond_1
    const-string v0, "rbx.contacts"

    const-string v1, "Requesting the permission for the first time."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->x()V

    goto :goto_0
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 287
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    .line 289
    invoke-static {p0, v0, v3}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 290
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->m()V

    .line 291
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    .prologue
    .line 409
    iput p1, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:I

    .line 410
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "rbx.contacts"

    const-string v1, "Contact permissions have already been granted. Displaying contact details."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->B()V

    .line 233
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_CONTACTS"

    .line 222
    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    const-string v0, "rbx.contacts"

    const-string v1, "Contact permissions have already been denied once and the userselected \'Don\'t ask me again\'."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->y()V

    goto :goto_0

    .line 228
    :cond_1
    const-string v0, "rbx.contacts"

    const-string v1, "Contact permissions have NOT been granted."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->z()V

    .line 231
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->C()V

    goto :goto_0
.end method

.method l()Z
    .locals 3

    .prologue
    .line 299
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    const-string v1, "PermissionAlreadyAsked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method m()V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    const-string v1, "PermissionAlreadyAsked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->finish()V

    .line 405
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 73
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iput v10, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:I

    .line 78
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 79
    :cond_0
    const-string v0, "rbx.contacts"

    const-string v1, "This feature is only for users over 13 years old and Android >= 6"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x6

    iput v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->q:I

    .line 83
    const v0, 0x7f0e0178

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->finish()V

    .line 90
    :cond_1
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->setContentView(I)V

    .line 93
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 94
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->f()Landroid/support/v7/app/a;

    move-result-object v1

    .line 99
    const v2, 0x7f0e016b

    invoke-virtual {v1, v2}, Landroid/support/v7/app/a;->a(I)V

    .line 100
    invoke-virtual {v1, v8}, Landroid/support/v7/app/a;->b(Z)V

    .line 101
    invoke-virtual {v1, v9}, Landroid/support/v7/app/a;->a(Z)V

    .line 103
    invoke-static {v0, p0}, Lcom/roblox/client/components/p;->b(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V

    .line 105
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->m:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/contacts/ActivityContacts$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/contacts/ActivityContacts$1;-><init>(Lcom/roblox/client/contacts/ActivityContacts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts;->p:Landroid/widget/LinearLayout;

    .line 116
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/contacts/ActivityContacts$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/contacts/ActivityContacts$2;-><init>(Lcom/roblox/client/contacts/ActivityContacts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/roblox/client/components/RbxTextView;

    .line 124
    const v0, 0x7f0e017a

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    const v0, 0x7f0e017c

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v3, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/contacts/ActivityContacts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 128
    new-instance v0, Lcom/roblox/client/util/a/e;

    invoke-static {}, Lcom/roblox/client/b;->bD()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v5, v4, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/util/a/e;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    .line 130
    new-array v1, v8, [Lcom/roblox/client/util/a/a;

    aput-object v0, v1, v9

    invoke-static {v6, v7, v1}, Lcom/roblox/client/util/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/util/a/a;)V

    .line 134
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 135
    const/4 v0, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 136
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v10, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 137
    const/4 v0, 0x3

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 139
    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/roblox/client/k;->onDestroy()V

    .line 162
    invoke-direct {p0}, Lcom/roblox/client/contacts/ActivityContacts;->E()V

    .line 163
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->finish()V

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 191
    if-ne p1, v2, :cond_1

    .line 192
    const-string v0, "rbx.contacts"

    const-string v1, "Received response for contact permissions request."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p3}, Lcom/roblox/client/util/i;->a([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "rbx.contacts"

    const-string v1, "Read Contacts permission granted. Fetching contacts."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, v2}, Lcom/roblox/client/contacts/ActivityContacts;->c(Z)V

    .line 207
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v0, "rbx.contacts"

    const-string v1, "Contacts permissions were NOT granted."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/contacts/ActivityContacts;->c(Z)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/k;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/roblox/client/k;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/roblox/client/contacts/ActivityContacts;->k()V

    .line 156
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/roblox/client/k;->onStart()V

    .line 147
    const-string v0, "contactsPermission"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 148
    return-void
.end method
