export class Customer {

    constructor (
      public id?: number,
      public title?: string,
      public name?: string,
      public pre_name?: string,
      public street?: string,
      public additional_line?: string,
      public zip_code?: string,
      public city?: string,
      public country_id?: string,
      public language_id?: number,
      public phone_number?: string,
      public cell_phone_number?: string,
      public email?: string,
      public birthday?: Date,
      public newsletter?: boolean,
      public mail?: boolean,
      public employee?: boolean
    ) { }

    toString() {
      if(this.name || this.pre_name || this.title) {
        let name = "";

        if(this.title) {
          name += this.title.toString() + " ";
        }

        if(this.name) {
          name += this.name.toString() + " ";
        }

        if(this.pre_name) {
          name += this.pre_name.toString() + " ";
        }
        return name;
      } else {
        return null;
      }
    }
}
